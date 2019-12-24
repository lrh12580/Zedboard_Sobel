#include <ap_int.h>
#include <hls_stream.h>

template<unsigned int DataWidth, unsigned int numBytes>
void Mem2Stream(ap_uint<DataWidth> * in, hls::stream<ap_uint<DataWidth> > & out) {
  const unsigned int numWords = numBytes / (DataWidth / 8);
  for (unsigned int i = 0; i < numWords; i++) {
#pragma HLS PIPELINE II=1
    ap_uint<DataWidth> e = in[i];
    out.write(e);
  }
}

template<unsigned int DataWidth, unsigned int numBytes>
void Stream2Mem(hls::stream<ap_uint<DataWidth> > & in, ap_uint<DataWidth> * out) {
  const unsigned int numWords = numBytes / (DataWidth / 8);
  for (unsigned int i = 0; i < numWords; i++) {
#pragma HLS PIPELINE II=1
    ap_uint<DataWidth> e = in.read();
	out[i] = e;
  }
}

template<unsigned int DataWidth, unsigned int numBytes>
void Mem2Stream_Batch(ap_uint<DataWidth> * in, hls::stream<ap_uint<DataWidth> > & out, const unsigned int numReps) {
  const unsigned int indsPerRep = numBytes / (DataWidth / 8);
  unsigned int rep = 0;
  while (rep != numReps) {
    unsigned int repsLeft = numReps - rep;
    if ((repsLeft & 0xF) == 0) {
      Mem2Stream<DataWidth, numBytes * 16>(&in[rep * indsPerRep], out);
      rep += 16;
    } else {
      Mem2Stream<DataWidth, numBytes>(&in[rep * indsPerRep], out);
      rep += 1;
    }
  }
}
template<unsigned int DataWidth, unsigned int numBytes>
void Stream2Mem_Batch(hls::stream<ap_uint<DataWidth> > & in, ap_uint<DataWidth> * out, const unsigned int numReps) {
  const unsigned int indsPerRep = numBytes / (DataWidth / 8);
  unsigned int rep = 0;
  while (rep != numReps) {
    unsigned int repsLeft = numReps - rep;
    if ((repsLeft & 0xF) == 0) {
      Stream2Mem<DataWidth, numBytes * 16>(in, &out[rep * indsPerRep]);
      rep += 16;
    } else {
      Stream2Mem<DataWidth, numBytes>(in, &out[rep * indsPerRep]);
      rep += 1;
    }
  }
}
