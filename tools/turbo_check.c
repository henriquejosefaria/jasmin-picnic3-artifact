/* Checks whether the cores run at the TSC (base) frequency, i.e. Turbo Boost is off.
 * A chain of dependent 64-bit imul takes exactly 3 cycles each on Intel cores.
 * Prints TSC ticks / core cycles: ~1.00 = base clock (turbo off), clearly < 1 = turbo on.
 * Build: gcc -O1 -o turbo_check tools/turbo_check.c && ./turbo_check */
#include <stdio.h>
#include <stdint.h>
static inline uint64_t rdtsc(void){ uint32_t lo,hi; __asm__ volatile("rdtsc":"=a"(lo),"=d"(hi)); return ((uint64_t)hi<<32)|lo; }
int main(void){
  const uint64_t ITER = 50000000ULL;
  for (int r = 0; r < 5; r++) {
    uint64_t x = 1, one = 1, n = ITER, t0 = rdtsc();
    __asm__ volatile("1: imul %2,%0; imul %2,%0; imul %2,%0; imul %2,%0; imul %2,%0;"
                     "   imul %2,%0; imul %2,%0; imul %2,%0; imul %2,%0; imul %2,%0;"
                     "   dec %1; jnz 1b" : "+r"(x), "+r"(n) : "r"(one));
    uint64_t t = rdtsc() - t0;
    printf("TSC ticks / core cycles = %.3f\n", (double)t / (double)(ITER * 10 * 3));
  }
  return 0;
}
