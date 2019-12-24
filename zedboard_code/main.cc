#include "zedboard_driver.h"
#include "core.h"
#include <hls_opencv.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <string>

#include <signal.h>
#include <fcntl.h>
#include <wait.h>
#include <math.h>

#define MAXLINE 1024

#define HARDWARE 1
#define SOFTWARE 2
#define TOGETHER 3

#include "hls_video.h"
#include <ap_fixed.h>

#define MAX_WIDTH  512
#define MAX_HEIGHT 512

typedef hls::stream<ap_axiu<32,1,1,1> > AXI_STREAM;

template<int W>
void IplImage2Array(IplImage* img, ap_uint<W>* AXI_video_array);

template<int W>
void Array2IplImage(ap_uint<W>* AXI_video_array, IplImage* img);

#define SrcBuffer_send 0x1F100000
#define SrcBuffer_receive 0x1F300000

using namespace std;
using namespace cv;

int axidma_busy(unsigned int* dma_handle, int Direction)
{
    
    return ((ZedboardReadMappedReg(dma_handle +
    (XAXIDMA_RX_OFFSET * Direction),
                                   XAXIDMA_SR_OFFSET) &
                                   XAXIDMA_IDLE_MASK) ? 0 : 1);
}


int main(int argc, char **argv)
{
    uint32_t t_process;
    struct timespec start, stop;
    
    pid_t childpid;
    
    int platform;
    
    IplImage* src;
    IplImage* dst;
    ap_uint<32> *src_array;
    ap_uint<32> *dst_array;
    
    uint32_t* image_filter_handle = ZedboardMapRegister(Zedboard_IMAGE_FILTER_ADDR, Zedboard_RANGE);

    //uint32_t* SrcPtr_send = (uint32_t *) SrcBuffer_send;
    //uint32_t* SrcPtr_receive = (uint32_t *) SrcBuffer_receive;

    uint32_t* SrcPtr_receive = ZedboardMapRegister(SrcBuffer_receive, MAX_HEIGHT * MAX_WIDTH * 4);// OCM receiving data location initialize
    uint32_t* SrcPtr_send = ZedboardMapRegister(SrcBuffer_send, MAX_HEIGHT * MAX_WIDTH * 4); // OCM sending data location initialize
    
    char * receive_file_name = "server.jpg";
    char * send_file_name = "server_return.jpg";
    
    int  listenfd, connfd;
    struct sockaddr_in  servaddr;
    char  buff[MAXLINE];
    FILE *receive_fp;
    FILE *send_fp;
    int len;
    
    if( (listenfd = socket(AF_INET, SOCK_STREAM, 0)) == -1 ){
        printf("create socket error: %s(errno: %d)\n",strerror(errno),errno);
        return 0;
    }
    printf("----init socket----\n");
    
    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    servaddr.sin_port = htons(12580);
    
    int contain;
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &contain, sizeof(int));
    
    if(bind(listenfd, (struct sockaddr*) &servaddr, sizeof(servaddr)) == -1) {
        printf("bind socket error: %s(errno: %d)\n",strerror(errno),errno);
        return 0;
    }
    printf("----bind sucess----\n");
    
    if(listen(listenfd, 10) == -1) {
        printf("listen socket error: %s(errno: %d)\n",strerror(errno),errno);
        return 0;
    }

    printf("======waiting for client's request======\n");
    
    while(1) {
	    
        if((receive_fp = fopen(receive_file_name, "wb+") ) == NULL) {
		printf("File.\n");
		close(listenfd);
		exit(1);
    	}
  
        struct sockaddr_in client_addr;
        socklen_t size=sizeof(client_addr);
        if( (connfd = accept(listenfd, (struct sockaddr*)&client_addr, &size)) == -1){
            printf("accept socket error: %s(errno: %d)",strerror(errno),errno);
            continue;
        }
        
        read(connfd, buff, 1);
        
        for (int i = 0; i < 1; i++)
            printf("%d", buff[i]);
        
        printf("\n");
        
        platform = buff[0];
        
        while(1) {
            len = read(connfd, buff, MAXLINE);
            if(len == 0)
                break;
            fwrite(buff, 1, len, receive_fp);
        }

        buff[len] = '\0';
        printf("recv msg from client: %s\n", buff);
        fclose(receive_fp);
        
        src = cvLoadImage(receive_file_name);
        
        if (src->height > MAX_HEIGHT || dst->width > MAX_WIDTH) {
            IplImage* source = cvLoadImage(receive_file_name);
            src = cvCreateImage(cvSize(MAX_WIDTH, MAX_HEIGHT), source->depth, source->nChannels);
            cvResize(source, src);
        }
        
        dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
        
        src_array = new ap_uint<32>[src->height * src->width];
        dst_array = new ap_uint<32>[dst->height * dst->width];
        
        IplImage2Array(src, src_array);
        
        if (platform == HARDWARE) {
            clock_gettime(CLOCK_REALTIME, &start);
            int buffer_byte_size = src->height * src->width * 32 / 8;
            
            cout << "initial succeed!" << endl;
            
            for (int i = 0; i < src->height * src->width; i++) {
                SrcPtr_send[i] = src_array[i];
            }
            
            ZedboardWriteMappedReg(image_filter_handle, 0x10, SrcBuffer_send);
            ZedboardWriteMappedReg(image_filter_handle, 0x18, SrcBuffer_receive);
            ZedboardWriteMappedReg(image_filter_handle, 0x20, src->height);
            ZedboardWriteMappedReg(image_filter_handle, 0x28, src->width);
            
            ZedboardWriteMappedReg(image_filter_handle, 0x00, 0x01);
            
            while (1) {
                int status = ZedboardReadMappedReg(image_filter_handle, 0x00);
                
                if ((status >> 1) % 2 == 1)
                    break;
            }
            
            cout << "initial succeed!" << endl;    
            
            for (int i = 0; i < dst->height * dst->width; i++) {
                dst_array[i] = SrcPtr_receive[i];
            }
            
            clock_gettime(CLOCK_REALTIME, &stop);
            t_process = 1000000000ULL * (stop.tv_sec - start.tv_sec) + (stop.tv_nsec - start.tv_nsec);
        } 
        
        else if (platform == SOFTWARE) {
            clock_gettime(CLOCK_REALTIME, &start);
            image_filter(src_array, dst_array, src->height, src->width);
            clock_gettime(CLOCK_REALTIME, &stop);
            t_process = 1000000000ULL * (stop.tv_sec - start.tv_sec) + (stop.tv_nsec - start.tv_nsec);
        } else if (platform == TOGETHER) {
            /*  */
            ap_uint<32> *tmp_dst_array = new ap_uint<32>[dst->height * dst->width];
        
            clock_gettime(CLOCK_REALTIME, &start);
            
            childpid = fork();
            if (childpid == 0) {
                int buffer_byte_size = src->height * src->width * 32 / 8;
                cout << "initial succeed!" << endl;
            
                for (int i = 0; i < src->height * src->width; i++) {
                    SrcPtr_send[i] = src_array[i];
                }
            
                ZedboardWriteMappedReg(image_filter_handle, 0x10, SrcBuffer_send);
                ZedboardWriteMappedReg(image_filter_handle, 0x18, SrcBuffer_receive);
                ZedboardWriteMappedReg(image_filter_handle, 0x20, src->height);
                ZedboardWriteMappedReg(image_filter_handle, 0x28, src->width);
            
                ZedboardWriteMappedReg(image_filter_handle, 0x00, 0x01);
            
                while (1) {
                    int status = ZedboardReadMappedReg(image_filter_handle, 0x00);
                
                    if ((status >> 1) % 2 == 1)
                        break;
                }
            
                cout << "initial succeed!" << endl;    
            
                for (int i = 0; i < dst->height * dst->width; i++) {
                    dst_array[i] = SrcPtr_receive[i];
                }
                exit(0);
            } else {
                image_filter(src_array, tmp_dst_array, src->height, src->width);
                wait(NULL);
            }
            
            clock_gettime(CLOCK_REALTIME, &stop);
            t_process = 1000000000ULL * (stop.tv_sec - start.tv_sec) + (stop.tv_nsec - start.tv_nsec);
        }
        
        Array2IplImage(dst_array, dst);
        cvSaveImage(send_file_name, dst);
        
        cvReleaseImage(&src);
        cvReleaseImage(&dst);
        
        if ((send_fp = fopen(send_file_name, "rb")) == NULL) {
            printf("File open.\n");
            close(connfd);
            exit(1);
        }
        
        printf("process time is %u: \n", t_process);
        long t_send = (long) t_process / 1000;
        int length = 16;
        for (int i = 0; i < length; i++) {
            buff[length - i - 1] = t_send % 10;
            t_send = t_send / 10;
        }
        write(connfd, buff, length);

        bzero(buff, sizeof(buff));
        
        while (!feof(send_fp)) {
            len = fread(buff, 1, sizeof(buff), send_fp);

	    std::string s = buff;

	    strcpy(buff, s.c_str());

            if (len != write(connfd, buff, len)) {
                printf("write.\n");
                break;
            }
        }
        
        close(connfd);
        fclose(send_fp);
    }
    close(listenfd);
    
    ZedboardUnmapRegister(image_filter_handle, Zedboard_RANGE);
    ZedboardUnmapRegister(SrcPtr_send, MAX_HEIGHT * MAX_WIDTH * 4);
    ZedboardUnmapRegister(SrcPtr_receive, MAX_HEIGHT * MAX_WIDTH * 4);
    
    return 0;
}

template<int W>
void IplImage2Array(IplImage* img, ap_uint<W>* AXI_video_array) {
    int i, j, k;
    CvScalar cv_pix;
    ap_uint<W> axi;
    int depth = (img->depth & 0xff);
    for (i = 0; i < img->height; i++) {
        for (j = 0; j < img->width; j++) {
            axi = -1;
            cv_pix = cvGet2D(img, i, j);
            for (k = 0; k < img->nChannels; k++) {
                switch(img->depth) {
                    case static_cast<int>(IPL_DEPTH_8U):
                        hls::AXISetBitFields(axi, k*depth, depth, (unsigned char)cv_pix.val[k]);
                        break;
                    case static_cast<int>(IPL_DEPTH_8S):
                        hls::AXISetBitFields(axi, k*depth, depth, (char)cv_pix.val[k]);
                        break;
                    case static_cast<int>(IPL_DEPTH_16U):
                        hls::AXISetBitFields(axi, k*depth, depth, (unsigned short)cv_pix.val[k]);
                        break;
                    case static_cast<int>(IPL_DEPTH_16S):
                        hls::AXISetBitFields(axi, k*depth, depth, (short)cv_pix.val[k]);
                        break;
                    case static_cast<int>(IPL_DEPTH_32S):
                        hls::AXISetBitFields(axi, k*depth, depth, (int)cv_pix.val[k]);
                        break;
                    case static_cast<int>(IPL_DEPTH_32F):
                        hls::AXISetBitFields(axi, k*depth, depth, (float)cv_pix.val[k]);
                        break;
                    case static_cast<int>(IPL_DEPTH_64F):
                        hls::AXISetBitFields(axi, k*depth, depth, (double)cv_pix.val[k]);
                        break;
                    default:
                        hls::AXISetBitFields(axi, k*depth, depth, (unsigned char)cv_pix.val[k]);
                        break;
                }
            }
            AXI_video_array[i * img->width + j] =  axi;
        }
    }
}

template<int W>
void Array2IplImage(ap_uint<W>* AXI_video_array, IplImage* img) {
    int i, j, k;
    ap_uint<W> axi;
    CvScalar cv_pix;
    int depth = (img->depth & 0xff);
    bool sof = 0;
    for (i = 0; i < img->height; i++) {
        for (j = 0; j < img->width; j++) {
            axi = AXI_video_array[i * img->width + j];
            for (k = 0; k < img->nChannels; k++) {
                switch (img->depth) {
                    case static_cast<int>(IPL_DEPTH_8U): {
                        unsigned char temp;
                        hls::AXIGetBitFields(axi, k * depth, depth, temp);
                        cv_pix.val[k] = temp;
                    }
                    break;
                    case static_cast<int>(IPL_DEPTH_8S): {
                        char temp;
                        hls::AXIGetBitFields(axi, k * depth, depth, temp);
                        cv_pix.val[k] = temp;
                    }
                    break;
                    case static_cast<int>(IPL_DEPTH_16U): {
                        unsigned short temp;
                        hls::AXIGetBitFields(axi, k * depth, depth, temp);
                        cv_pix.val[k] = temp;
                    }
                    break;
                    case static_cast<int>(IPL_DEPTH_16S): {
                        short temp;
                        hls::AXIGetBitFields(axi, k * depth, depth, temp);
                        cv_pix.val[k] = temp;
                    }
                    break;
                    case static_cast<int>(IPL_DEPTH_32S): {
                        int temp;
                        hls::AXIGetBitFields(axi, k * depth, depth, temp);
                        cv_pix.val[k] = temp;
                    }
                    break;
                    case static_cast<int>(IPL_DEPTH_32F): {
                        float temp;
                        hls::AXIGetBitFields(axi, k * depth, depth, temp);
                        cv_pix.val[k] = temp;
                    }
                    break;
                    case static_cast<int>(IPL_DEPTH_64F): {
                        double temp;
                        hls::AXIGetBitFields(axi, k * depth, depth, temp);
                        cv_pix.val[k] = temp;
                    }
                    break;
                    default: {
                        unsigned char temp;
                        hls::AXIGetBitFields(axi, k * depth, depth, temp);
                        cv_pix.val[k] = temp;
                    }
                    break;
                }
            }
            cvSet2D(img, i, j, cv_pix);
            
        }
    }
}
