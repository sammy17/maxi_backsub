#include <string.h>
#include <fstream>
#include <iostream>

//V4L2 Includes

#include <stdio.h>
#include <stdlib.h>
#include <linux/ioctl.h>
#include <linux/types.h>
#include <linux/v4l2-common.h>
#include <linux/v4l2-controls.h>
#include <linux/videodev2.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <string.h>
#include <string>
#include <hls_opencv.h>
#include <stdint.h>
#include "core.h"

#include <iostream>
#include <fstream>
#include <climits>
#include <iostream>
#include <algorithm>
#include <bitset>


#define WIDTH 320
#define HEIGHT 240
#define BUF_SIZE(W,H) W*H
#define N BUF_SIZE(WIDTH,HEIGHT)

using namespace std;

