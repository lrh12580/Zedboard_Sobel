#ifndef STREAMTOOLS_H
#define STREAMTOOLS_H

#include <hls_stream.h>
#include "ap_int.h"

template<unsigned int InWidth,		// width of input stream
		unsigned int OutWidth,		// width of output stream
		unsigned int NumInWords		// number of input words to process
>
void StreamingDataWidthConverter_Batch(hls::stream<ap_uint<InWidth> > & in,
		hls::stream<ap_uint<OutWidth> > & out, const unsigned int numReps) {
	if (InWidth > OutWidth) {
		const unsigned int outPerIn = InWidth / OutWidth;
		const unsigned int totalIters = NumInWords * outPerIn * numReps;
		unsigned int o = 0;
		ap_uint < InWidth > ei = 0;
		for (unsigned int t = 0; t < totalIters; t++) {
#pragma HLS PIPELINE II=1
			if (o == 0) {
				ei = in.read();
			}
			ap_uint < OutWidth > eo = ei(OutWidth - 1, 0);
			out.write(eo);
			ei = ei >> OutWidth;
			o++;
			if (o == outPerIn) {
				o = 0;
			}
		}
	} else if (InWidth == OutWidth) {
		for (unsigned int i = 0; i < NumInWords * numReps; i++) {
#pragma HLS PIPELINE II=1
			ap_uint < InWidth > e = in.read();
			out.write(e);
		}
	} else { // InWidth < OutWidth
		const unsigned int inPerOut = OutWidth / InWidth;
		const unsigned int totalIters = NumInWords * numReps;
		unsigned int i = 0;
		ap_uint < OutWidth > eo = 0;
		for (unsigned int t = 0; t < totalIters; t++) {
#pragma HLS PIPELINE II=1
			ap_uint < InWidth > ei = in.read();
			eo = eo >> InWidth;
			eo(OutWidth - 1, OutWidth - InWidth) = ei;
			i++;
			if (i == inPerOut) {
				i = 0;
				out.write(eo);
			}
		}
	}
}

#endif
