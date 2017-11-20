#include "core.h"
#include <hls_math.h>

int backsub(uint32_t * frame_in, uint8_t * frame_out,uint16_t frame[76800], bool init) {
#pragma HLS INTERFACE m_axi port=frame_out offset=slave
#pragma HLS INTERFACE m_axi port=frame_in offset=slave
#pragma HLS INTERFACE bram port=frame
#pragma HLS INTERFACE s_axilite port=init bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS


	float alpha = 0.1;
	float beta = 0.2;
	float gamma = 0.7;
	uint32_t yuv_frame[76800/2];
	uint8_t grey_frame[76800];
	memcpy(yuv_frame,frame_in,sizeof(uint32_t)*76800/2);

	loop1: {
		if (init) {
			for (int i = 0; i < IMG_SIZE; i = i + 2) {
#pragma HLS UNROLL factor=16
#pragma HLS PIPELINE
				yuv pix;

				tostruct(yuv_frame[i/2], &pix);
				frame[i] = pix.y1;
				frame[i + 1] = pix.y2;

				frame[i] = frame[i] | (pix.y1 << 8);
				frame[i+1] = frame[i + 1] | (pix.y2 << 8);

				grey_frame[i]=pix.y1;
				grey_frame[i + 1] = pix.y2;
			}

		}
		else {

			for (int i = 0; i < IMG_SIZE; i=i+2) {
#pragma HLS PIPELINE
#pragma HLS UNROLL factor=16
				yuv pix;

				tostruct(yuv_frame[i/2], &pix);

				uint8_t pix_11 = pix.y1;
				uint8_t pix_12 = frame[i];
				uint8_t pix_13 = frame[i] >> 8;

				uint8_t pix_21 = pix.y2;
				uint8_t pix_22 = frame[i + 1];
				uint8_t pix_23 = frame[i + 1] >> 8;

				frame[i] = pix_11;
				frame[i] = frame[i] | (pix_12 << 8);

				frame[i+1] = pix_21;
				frame[i+1] = frame[i + 1] | (pix_22 << 8);

				uint8_t temp_1 = alpha * pix_11 + beta * pix_12+ gamma * pix_13;
				uint8_t temp_2 = alpha * pix_21 + beta * pix_22+ gamma * pix_23;

				//have to do for two pixels

				if (15 > hls::abs(pix_11 - temp_1))
					grey_frame[i] = 0;
				else
					grey_frame[i] = 255;


				if (15 > hls::abs(pix_21 - temp_2))
					grey_frame[i+1] = 0;
				else
					grey_frame[i+1] = 255;
			}
		}
	}

	memcpy(frame_out,grey_frame,sizeof(uint8_t)*IMG_SIZE);
	return 0;
}

void tostruct(uint32_t val, yuv *yuv_struct) {
	yuv_struct->y1 =  255 & val;
	yuv_struct->u = 255 & (val >> 8);
	yuv_struct->y2 = 255 & (val >> 16);
	yuv_struct->v = 255 & (val >> 24);
}
