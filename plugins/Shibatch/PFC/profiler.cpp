#include "pfc.h"
#include <intrin.h>

int64_t profiler_local::get_timestamp()
{
  return __rdtsc();
}