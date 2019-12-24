#include "core.h"
#include "dma.h"
#include "streamtools.h"
#include "hls_video.h"

void image_filter(ap_uint<DATAWIDTH> *in, ap_uint<DATAWIDTH> *out, int rows, int cols) {

#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS
// signals to be mapped to the AXI master port (hostmem)
#pragma HLS INTERFACE m_axi offset=slave port=in bundle=hostmem_1 depth=256
#pragma HLS INTERFACE s_axilite port=in bundle=CONTROL_BUS
#pragma HLS INTERFACE m_axi offset=slave port=out bundle=hostmem_2 depth=256
#pragma HLS INTERFACE s_axilite port=out bundle=CONTROL_BUS

#pragma HLS DATAFLOW

	int numReps = 1;

	hls::stream<ap_uint<32> > in_stream;

	hls::stream<ap_uint<8> > gray_stream;

	hls::stream<ap_uint<8> > gaussian_stream_x;
	hls::stream<ap_uint<8> > gaussian_stream_y;

	hls::stream<ap_uint<8> > sobel_stream_x;
	hls::stream<ap_uint<8> > sobel_stream_y;

	hls::stream<ap_uint<8> > addWeight_stream;

	hls::stream<ap_uint<32> > out_stream;
#pragma HLS STREAM variable=in_stream depth=128
#pragma HLS STREAM variable=gray_stream depth=128

#pragma HLS STREAM variable=gaussian_stream_x depth=128
#pragma HLS STREAM variable=gaussian_stream_y depth=128

#pragma HLS STREAM variable=sobel_stream_x depth=128
#pragma HLS STREAM variable=sobel_stream_y depth=128

#pragma HLS STREAM variable=addWeight_stream depth=128

#pragma HLS STREAM variable=out_stream depth=128

	Mem2Stream_Batch<32, MAX_HEIGHT * MAX_WIDTH * 32 / 8>(in, in_stream, numReps);

	bgr2gray(in_stream, gray_stream);


	gaussianBlur(gray_stream, gaussian_stream_x, gaussian_stream_y);

	sobel_x(gaussian_stream_x, sobel_stream_x);
	sobel_y(gaussian_stream_y, sobel_stream_y);

	addWeighted(sobel_stream_x, sobel_stream_y, addWeight_stream);

	gray2bgr(addWeight_stream, out_stream);

	Stream2Mem_Batch<32, MAX_HEIGHT * MAX_WIDTH * 32 / 8>(out_stream, out, numReps);

//	RGB_IMAGE img_0(rows, cols);
//	GRAY_IMAGE img_1(rows, cols);
//	RGB_IMAGE img_2(rows, cols);

//	Array2Mat<DATAWIDTH, HLS_8UC3, MAX_HEIGHT, MAX_WIDTH>(in, cols, img_0);

//	hls::CvtColor<HLS_BGR2GRAY>(img_0, img_1);
//	hls::CvtColor<HLS_GRAY2RGB>(img_1, img_2);
//	Mat2Array<DATAWIDTH, HLS_8UC3, MAX_HEIGHT, MAX_WIDTH>(img_2, cols, out);
}

void bgr2gray(hls::stream<ap_uint<32> > &src, hls::stream<ap_uint<8> > &dst) {
	for (int i = 0; i < MAX_HEIGHT * MAX_WIDTH; i++) {
#pragma HLS pipeline II=1
		ap_uint<32> in = src.read();
		ap_uint<8> out = 0;

//		float tmp = 0;

		ap_uint<8> blue = in(7, 0);
		ap_uint<8> green = in(15, 8);
		ap_uint<8> red = in(23, 16);

		float tmp = blue * 0.114 + green * 0.587 + red * 0.299;

//		tmp = blue * 0.1 + green * 0.6 + red * 0.3;
		out = (ap_uint<8>) tmp;
		dst.write(out);
	}
}

void gray2bgr(hls::stream<ap_uint<8> > &src, hls::stream<ap_uint<32> > &dst) {
	for (int i = 0; i < MAX_HEIGHT * MAX_WIDTH; i++) {
#pragma HLS pipeline II=1
		ap_uint<8> in = src.read();
		ap_uint<32> out = 0;

			out(7, 0) = in;
			out(15, 8) = in;
			out(23, 16) = in;
			out(31, 24) = 0xff;
		dst.write(out);
	}
}

template <int DataWidth, int T, int ROWS, int COLS>
int Array2Mat(ap_uint<DataWidth> *in, int rowStride, hls::Mat<ROWS, COLS, T>& img) {
    int res = 0;
    HLS_SIZE_T rows = img.rows;
    HLS_SIZE_T cols = img.cols;
    int depth = HLS_TBITDEPTH(T);
    int ch = HLS_MAT_CN(T);
    HLS_SIZE_T col = 0;
    hls::Scalar<HLS_MAT_CN(T), HLS_TNAME(T)> pix;
loop_pixel:
    for (HLS_SIZE_T row = 0; row < rows; row++) {
        for (HLS_SIZE_T col = 0; col < cols; col++) {
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
        	ap_uint<DataWidth> fb_pix = in[row*rowStride+col];
            ap_uint<HLS_MAT_CN(T)*HLS_TBITDEPTH(T)> pix_value;
            hls::AXISetBitFields(pix_value, 0, HLS_MAT_CN(T)*HLS_TBITDEPTH(T), fb_pix);
loop_channels:
            for (HLS_CHANNEL_T k = 0; k < HLS_MAT_CN(T); k++) {
#pragma HLS unroll
                hls::AXIGetBitFields(pix_value, k*depth, depth, pix.val[k]);
            }
            img << pix;
        }
    }
    return res;
}

template <int DataWidth, int T, int ROWS, int COLS>
int Mat2Array(hls::Mat<ROWS, COLS, T>& img, int rowStride, ap_uint<DataWidth> *out) {
	int res = 0;
	    HLS_SIZE_T rows = img.rows;
	    HLS_SIZE_T cols = img.cols;
	    int depth = HLS_TBITDEPTH(T);
	    int ch = HLS_MAT_CN(T);
	    HLS_SIZE_T col = 0;
	    hls::Scalar<HLS_MAT_CN(T), HLS_TNAME(T)> pix;
	loop_pixel:
	    for (HLS_SIZE_T row = 0; row < rows; row++) {
	        for (HLS_SIZE_T col = 0; col < cols; col++) {
	#pragma HLS loop_flatten off
	#pragma HLS pipeline II=1
	            ap_uint<HLS_MAT_CN(T)*HLS_TBITDEPTH(T)> pix_value;
	            img >> pix;
	loop_channels:
	            for (HLS_CHANNEL_T k = 0; k < HLS_MAT_CN(T); k++) {
	#pragma HLS unroll
	            	hls::AXISetBitFields(pix_value, k*depth, depth, pix.val[k]);
	            }
	            ap_uint<DataWidth> fb_pix = -1;
	            hls::AXIGetBitFields(pix_value, 0, HLS_MAT_CN(T)*HLS_TBITDEPTH(T), fb_pix);
	            out[row*rowStride+col] = fb_pix;
	        }
	    }
	    return res;
}

void gaussianBlur(hls::stream<ap_uint<8> > &src, hls::stream<ap_uint<8> > &dst_x, hls::stream<ap_uint<8> > &dst_y) {

	float kernal_g_float[9] = {0.0947416, 0.118318, 0.0947416,
			              	  0.118318, 0.147761, 0.118318,
							  0.0947416, 0.118318, 0.0947416};

	ap_uint<16> kernal_g[9];

	for (int i = 0; i < KERNEL_DIM * KERNEL_DIM; i++) {
		kernal_g[i] = ap_uint<16> (MAX_VALUE * kernal_g_float[i]);
	}

	hls::LineBuffer<KERNEL_DIM, MAX_WIDTH, ap_uint<8> > lineBuff;
	hls::Window<KERNEL_DIM, KERNEL_DIM, ap_uint<16> > window;

	int idxCol = 0;
	int idxRow = 0;
	int pixConvolved = 0;
	// Calculate delay to fix line-buffer offset
	int waitTicks = (MAX_WIDTH * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;
	int countWait = 0;
	int sentPixels = 0;

	ap_uint<8> in;

	ap_uint<8> out_x;
	ap_uint<8> out_y;

	for (int idxPixel = 0; idxPixel < (MAX_WIDTH * MAX_HEIGHT); idxPixel++)
	{
#pragma HLS PIPELINE
		in = src.read();

		lineBuff.shift_up(idxCol);
		lineBuff.insert_top(in, idxCol);

		for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++)
		{
			for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++)
			{
				ap_uint<16> val = lineBuff.getval(idxWinRow,idxWinCol+pixConvolved);

				val = kernal_g[(idxWinRow * KERNEL_DIM) + idxWinCol] * val;
				window.insert(val, idxWinRow, idxWinCol);
			}
		}

		out_x = 0;
		out_y = 0;
		if ((idxRow >= KERNEL_DIM - 1) && (idxCol >= KERNEL_DIM - 1))
		{

			ap_uint<16> accumulator = 0;
			for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++)
			{
				for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++)
				{
					accumulator = accumulator + window.getval(idxRow,idxCol);
				}
			}

			out_x = accumulator / MAX_VALUE;
			out_y = accumulator / MAX_VALUE;

			pixConvolved++;
		}

		if (idxCol < MAX_WIDTH - 1)
		{
			idxCol++;
		}
		else
		{
			// New line
			idxCol = 0;
			idxRow++;
			pixConvolved = 0;
		}

		countWait++;
		if (countWait > waitTicks)
		{
			dst_x.write(out_x);
			dst_y.write(out_y);
			sentPixels++;
		}
	}

	for (countWait = 0; countWait < waitTicks; countWait++)
	{
		out_x = 0;
		out_y = 0;
		dst_x.write(out_x);
		dst_y.write(out_y);
	}

}

void sobel_x(hls::stream<ap_uint<8> > &src, hls::stream<ap_uint<8> > &dst) {

	ap_int<16> kernal_x[9] = {-1, 0, 1,
			  	  	  	  	  -2, 0, 2,
							  -1, 0, 1};

	hls::LineBuffer<KERNEL_DIM, MAX_WIDTH, ap_uint<8> > lineBuff;
	hls::Window<KERNEL_DIM, KERNEL_DIM, ap_uint<16> > window;

	int idxCol = 0;
	int idxRow = 0;
	int pixConvolved = 0;
	
	int waitTicks = (MAX_WIDTH * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;
	int countWait = 0;
	int sentPixels = 0;

	ap_uint<8> in;

	ap_uint<8> out;

	for (int idxPixel = 0; idxPixel < (MAX_WIDTH * MAX_HEIGHT); idxPixel++)
	{
#pragma HLS PIPELINE II = 1
		in = src.read();

		lineBuff.shift_up(idxCol);
		lineBuff.insert_top(in, idxCol); 

		for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++)
		{
			for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++)
			{
				ap_int<16> val = lineBuff.getval(idxWinRow, idxWinCol+pixConvolved);

				val = kernal_x[(idxWinRow * KERNEL_DIM) + idxWinCol] * val;
				window.insert(val, idxWinRow, idxWinCol);
			}
		}

		out = 0;
		if ((idxRow >= KERNEL_DIM - 1) && (idxCol >= KERNEL_DIM - 1))
		{

			ap_int<16> accumulator = 0;
			for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++)
			{
				for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++)
				{
					accumulator = accumulator + window.getval(idxRow,idxCol);
				}
			}

			out = accumulator;
			if (accumulator < 0)
				out = -accumulator;

			pixConvolved++;
		}

		// Calculate row and col index
		if (idxCol < MAX_WIDTH - 1)
		{
			idxCol++;
		}
		else
		{
			// New line
			idxCol = 0;
			idxRow++;
			pixConvolved = 0;
		}

		countWait++;
		if (countWait > waitTicks)
		{
			dst.write(out);
			sentPixels++;
		}
	}

	for (countWait = 0; countWait < waitTicks; countWait++)
	{
		out = 0;
		dst.write(out);
	}
}

void sobel_y(hls::stream<ap_uint<8> > &src, hls::stream<ap_uint<8> > &dst) {
	ap_int<16> kernal_y[9] = {1, 2, 1,
							  0, 0, 0,
							 -1, -2, -1};

	hls::LineBuffer<KERNEL_DIM, MAX_WIDTH, ap_uint<8> > lineBuff;
	hls::Window<KERNEL_DIM, KERNEL_DIM, ap_uint<16> > window;

	int idxCol = 0;
	int idxRow = 0;
	int pixConvolved = 0;
	
	int waitTicks = (MAX_WIDTH * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;
	int countWait = 0;
	int sentPixels = 0;

	ap_uint<8> in;

	ap_uint<8> out;

	for (int idxPixel = 0; idxPixel < (MAX_WIDTH * MAX_HEIGHT); idxPixel++)
	{
#pragma HLS PIPELINE
		in = src.read();

		lineBuff.shift_up(idxCol);
		lineBuff.insert_top(in, idxCol);

		for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++)
		{
			for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++)
			{
				ap_int<16> val = lineBuff.getval(idxWinRow, idxWinCol+pixConvolved);

				val = kernal_y[(idxWinRow * KERNEL_DIM) + idxWinCol] * val;
				window.insert(val, idxWinRow, idxWinCol);
			}
		}

		out = 0;
		if ((idxRow >= KERNEL_DIM - 1) && (idxCol >= KERNEL_DIM - 1))
		{

			ap_int<16> accumulator = 0;
			for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++)
			{
				for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++)
				{
					accumulator = accumulator + window.getval(idxRow,idxCol);
				}
			}

			out = accumulator;
			if (accumulator < 0)
				out = -accumulator;

			pixConvolved++;
		}

		if (idxCol < MAX_WIDTH - 1)
		{
			idxCol++;
		}
		else
		{
			// New line
			idxCol = 0;
			idxRow++;
			pixConvolved = 0;
		}

		countWait++;
		if (countWait > waitTicks)
		{
			dst.write(out);
			sentPixels++;
		}
	}

	for (countWait = 0; countWait < waitTicks; countWait++)
	{
		out = 0;
		dst.write(out);
	}
}

void addWeighted(hls::stream<ap_uint<8> > &src_x, hls::stream<ap_uint<8> > &src_y, hls::stream<ap_uint<8> > &dst) {
	for (int i = 0; i < MAX_HEIGHT * MAX_WIDTH; i++) {
#pragma HLS pipeline II=1
		ap_uint<8> in_1 = src_x.read();
		ap_uint<8> in_2 = src_y.read();
		ap_uint<8> out = in_1 * 0.5 + in_2 * 0.5;
		dst.write(out);
	}
}
