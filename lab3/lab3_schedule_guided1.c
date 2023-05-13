#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>

#ifdef _OPENMP

#include "omp.h"

#else
void omp_set_num_threads(int M) { };
#endif

#define A 14
int rand_r(unsigned int *seedp);

void comb_sort(float *data, int n) {
  const float shrink = 1.25;
  int i, delta = n, noswap = 0;
  while (!noswap) {
    for (noswap = 1, i = 0; i + delta < n; i++)
      if (data[i] > data[i + delta]) {
        float swap;
        swap = data[i];
        data[i] = data[i + delta];
        data[i + delta] = swap;
        noswap = 0;
      }
    if (delta > 1) {
      delta /= shrink;
      noswap = 0;
    }
  }
}

int main(int argc, char *argv[]) {
  int i, N, M;
  struct timeval T1, T2;
  long delta_ms;
  float X = 0;
  N = atoi(argv[1]); /* N равен первому параметру командной строки */
  M = atoi(argv[2]); /* M равен второму параметру командной строки */
  // fwStaticInit();

  omp_set_num_threads(M);

  gettimeofday(&T1, NULL); /* запомнить текущее время T1 */
  for (i = 0; i < 100; i++) /* 100 экспериментов*/
  {
    srand(i);
    /* инициализировать начальное значение ГСЧ */
    unsigned int seed = 1;
    /* Заполнить массив исходных данных размером N */
    /* Решить поставленную задачу, заполнить массив с результатами */
    float M1[N];
    float M2[N / 2];
    float M2CP[N / 2 + 1];

    // M1
    for (int j = 0; j < N; j++) {
      M1[j] = rand_r(&seed) % A + 1;
    }

#pragma omp parallel for default(none) shared(N, M1) schedule(guided, 1)
    for (int j = 0; j < N; j++)
    {
      M1[j] = exp(sqrt(M1[j]));
    }
    // M2
    for (int j = 0; j < N / 2; j++) {
      M2[j] = rand_r(&seed) % (9 * A + 1) + A;
      M2CP[j] = M2[j];

    }
#pragma omp parallel for default(none) shared(N, M2, M2CP) schedule(guided, 1)
    for (int j = 0; j < N / 2; j++)
    {

      if (j != 0)
      {
        M2[j] = M2[j] + M2CP[j - 1];
      }
      M2[j] = log10(M2[j]);
    }

#pragma omp parallel for default(none) shared(N, M1, M2) schedule(guided, 1)
    /* Этап Merge */
    for (int j = 0; j < N / 2; j++) {
      M2[j] = M1[j] / M2[j];
    }

    /* Отсортировать массив с результатами указанным методом*/
    comb_sort(M2, N / 2);

    /* Этап Reduce */
    float min = 0;
    int k = 0;

    while (min == 0) {
      min = (fabs(M2[k]) < 0.00001) ? M2[k] : 0;
      k++;
    }
#pragma omp parallel for default(none) shared(N, M2, min) reduction(+:X) schedule(guided, 1)
    for (int j = 0; j < N / 2; j++) {
      if ((int)(M2[j] / min) % 2 == 0) {
#pragma omp atomic
        X+= sin(M2[j]);
      }
    }
  }

  gettimeofday(&T2, NULL); /* запомнить текущее время T2 */
  delta_ms = 1000 * (T2.tv_sec - T1.tv_sec) + (T2.tv_usec - T1.tv_usec) / 1000;
  printf("\n N=%d. Milliseconds passed: %ld\n", N, delta_ms); /* T2 - T1 */
  printf("X: %f\n", X); /* T2 -T1 */
  return 0;
}
