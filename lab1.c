#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>

#define A 14

void comb_sort(float *data, int n)
{
  const float shrink = 1.25;
  int i, delta = n, noswap = 0;
  while (!noswap)
  {
    for (noswap = 1, i = 0; i + delta < n; i++)
      if (data[i] > data[i + delta])
      {
        float swap;
        swap = data[i];
        data[i] = data[i + delta];
        data[i + delta] = swap;
        noswap = 0;
      }
    if (delta > 1)
    {
      delta /= shrink;
      noswap = 0;
    }
  }
}

int main(int argc, char *argv[])
{
  int i, N;
  struct timeval T1, T2;
  long delta_ms;
  float X = 0;
  N = atoi(argv[1]);        /* N равен первому параметру командной строки */
  gettimeofday(&T1, NULL);  /* запомнить текущее время T1 */
  for (i = 0; i < 100; i++) /* 100 экспериментов*/
  {
    srand(i);
    /* инициализировать начальное значение ГСЧ */
    unsigned int seed = time(NULL);
    /* Заполнить массив исходных данных размером N */
    /* Решить поставленную задачу, заполнить массив с результатами */
    float M1[N];
    float M2[N / 2];
    float M2CP[N / 2];
    // M1
    for (int j = 0; j < N; j++)
    {
      M1[j] = rand_r(&seed) % A + 1;
      M1[j] = exp(sqrt(M1[j]));
    }
    // M2
    for (int j = 0; j < N / 2; j++)
    {
      M2[j] = rand_r(&seed) % (9 * A + 1) + A;
      M2CP[j] = M2[j];
      if (j != 0)
      {
        M2[j] = M2[j] + M2CP[j - 1];
      }
      M2[j] = log10(M2[j]);
    }

    /* Этап Merge */
    for (int j = 0; j < N / 2; j++)
    {
      M2[j] = M1[j] / M2[j];
    }

    /* Отсортировать массив с результатами указанным методом*/
    comb_sort(M2, N / 2);

    /* Этап Reduce */
    float min = 0;
    int k = 0;
    int temp = 0;

    while (min == 0)
    {
      min = (fabs(M2[k]) < 0.00001) ? M2[k] : 0;
      k++;
    }
    for (int j = 0; j < N / 2; j++)
    {
      temp = (int)(M2[j] / min);
      if (temp % 2 == 0)
      {
        X = X + sin(M2[j]);
      }
    }
  }

  gettimeofday(&T2, NULL); /* запомнить текущее время T2 */
  delta_ms = 1000 * (T2.tv_sec - T1.tv_sec) + (T2.tv_usec - T1.tv_usec) / 1000;
  printf("\n N=%d. Milliseconds passed: %ld\n", N, delta_ms); /* T2 - T1 */
      // printf("X: %fd\n", X); /* T2 -T1 */
  return 0;
}