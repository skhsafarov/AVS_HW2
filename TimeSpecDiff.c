#include "TimeSpecDiff.h"
int64_t TimeSpecDiff(struct timespec *start, struct timespec *end) {
  int64_t nsecStart, nsecEnd;
  nsecStart = (*start).tv_sec;
  nsecStart *= 1000000000;
  nsecStart += (*start).tv_nsec;

  nsecEnd = (*end).tv_sec;
  nsecEnd *= 1000000000;
  nsecEnd += (*end).tv_nsec;
  return nsecEnd - nsecStart;
}