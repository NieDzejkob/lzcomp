#include "proto.h"

const struct compressor compressors[] = {
  {.methods = 72, .function = &try_compress},      //  0-71
  {.methods =  2, .function = &store_uncompressed} // 72-73
};