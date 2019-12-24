#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <hls_video.h>
#include <ap_fixed.h>

#define MAX_WIDTH  512
#define MAX_HEIGHT 512

#define KERNEL_DIM 3

#define DATAWIDTH 32

#define MAX_VALUE 256

#ifndef AXI_VAL_DEF
typedef ap_int<DATAWIDTH> AXI_VAL_IO;
struct AXI_DMA_IO {
	ap_int<DATAWIDTH> data;
	bool last;
};
#define AXI_VAL_DEF
#endif

typedef ap_axiu<32, 1, 1, 1> stream_data;
typedef hls::stream<stream_data> AXI_STREAM;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3> RGB_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> GRAY_IMAGE;

void image_filter(ap_uint<DATAWIDTH> *in, ap_uint<DATAWIDTH> *out, int rows, int cols);

template<unsigned int DataWidth>
void image_process(hls::stream<ap_uint<DataWidth> > & in, hls::stream<ap_uint<DataWidth> > & out,
		const int rows, const int cols, const unsigned int numReps);

template <int DataWidth, int T, int ROWS, int COLS>
int Array2Mat(ap_uint<DataWidth> *in, int rowStride, hls::Mat<ROWS, COLS, T>& img);

template <int DataWidth, int T, int ROWS, int COLS>
int Mat2Array(hls::Mat<ROWS, COLS, T>& img, int rowStride, ap_uint<DataWidth> *out);


void bgr2gray(hls::stream<ap_uint<32> > &src, hls::stream<ap_uint<8> > &dst);
void gray2bgr(hls::stream<ap_uint<8> > &src, hls::stream<ap_uint<32> > &dst);

void gaussianBlur(hls::stream<ap_uint<8> > &src, hls::stream<ap_uint<8> > &dst_x, hls::stream<ap_uint<8> > &dst_y);

void sobel_x(hls::stream<ap_uint<8> > &src, hls::stream<ap_uint<8> > &dst);
void sobel_y(hls::stream<ap_uint<8> > &src, hls::stream<ap_uint<8> > &dst);

void addWeighted(hls::stream<ap_uint<8> > &src_x, hls::stream<ap_uint<8> > &src_y, hls::stream<ap_uint<8> > &dst);

