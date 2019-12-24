#include <hls_opencv.h>
#include "core.h"
#include <iostream>

template<int W>
void IplImage2Array(IplImage* img, ap_uint<W>* AXI_video_array);

template<int W>
void Array2IplImage(ap_uint<W>* AXI_video_array, IplImage* img);
using namespace std;

int main(int argc, char** argv) {

	IplImage* src;
	IplImage* dst;
	ap_uint<32> *src_array;
	ap_uint<32> *dst_array;

	src = cvLoadImage("test.bmp");

	IplImage* source = cvLoadImage("test.bmp");
	src = cvCreateImage(cvSize(MAX_WIDTH, MAX_HEIGHT), source->depth, source->nChannels);
	cvResize(source, src);

	dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);

	src_array = new ap_uint<32> [src->height * src->width];
	dst_array = new ap_uint<32> [src->height * src->width];

	cout << "src->nChannels: " << src->nChannels << endl;
	cout << "src->depth: " << src->depth << endl;
	cout << "src->height: " << src->height << endl;
	cout << "src->width: " << src->width << endl;

	IplImage2Array(src, src_array);
	image_filter(src_array, dst_array, src->height, src->width);
	Array2IplImage(dst_array, dst);
	cout << "dst->nChannels: " << src->nChannels << endl;
	cout << "dst->depth: " << src->depth << endl;
	cout << "dst->height: " << src->height << endl;
	cout << "dst->width: " << src->width << endl;

	cvSaveImage("op.bmp", dst);
	cvReleaseImage(&src);
	cvReleaseImage(&dst);
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
				switch (img->depth) {
				case static_cast<int>(IPL_DEPTH_8U):
					hls::AXISetBitFields(axi, k * depth, depth,
							(unsigned char) cv_pix.val[k]);
					break;
				case static_cast<int>(IPL_DEPTH_8S):
					hls::AXISetBitFields(axi, k * depth, depth,
							(char) cv_pix.val[k]);
					break;
				case static_cast<int>(IPL_DEPTH_16U):
					hls::AXISetBitFields(axi, k * depth, depth,
							(unsigned short) cv_pix.val[k]);
					break;
				case static_cast<int>(IPL_DEPTH_16S):
					hls::AXISetBitFields(axi, k * depth, depth,
							(short) cv_pix.val[k]);
					break;
				case static_cast<int>(IPL_DEPTH_32S):
					hls::AXISetBitFields(axi, k * depth, depth,
							(int) cv_pix.val[k]);
					break;
				case static_cast<int>(IPL_DEPTH_32F):
					hls::AXISetBitFields(axi, k * depth, depth,
							(float) cv_pix.val[k]);
					break;
				case static_cast<int>(IPL_DEPTH_64F):
					hls::AXISetBitFields(axi, k * depth, depth,
							(double) cv_pix.val[k]);
					break;
				default:
					hls::AXISetBitFields(axi, k * depth, depth,
							(unsigned char) cv_pix.val[k]);
					break;
				}
			}
			AXI_video_array[i * img->width + j] = axi;
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
