#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "TimeSpecDiff.h"
#include "TurnOver.h"
#define STR_CAPACITY 10240

int main(int argc, char **argv)
{
  char str[STR_CAPACITY];
  FILE *in, *out;
  int n, m;
  struct timespec start, end;
  srand(time(NULL));
  if (argc != 4)
  {
    printf("Неверное колличество параметров!");
    return 1;
  }
  clock_gettime(CLOCK_MONOTONIC, &start);
  if (strcmp(argv[1], "file") != 0)
  {
    in = fopen(argv[2], "r");
    if (in == NULL)
    {
      printf("Файла не существует!");
      return 2;
    }
    fscanf(in, "%s", str);
    TurnOver(str);
    out = fopen(argv[3], "w");
    fprintf(out, "%s", str);
  }
  else if (argv[1] == "rand")
  {
    m = atoi(argv[2]);
    n = atoi(argv[3]);
    if (m > n)
    {
      printf("min > max");
      return 3;
    }
    n = (rand() % (n - m + 1)) + m;
    for (int i = 0; i < n; ++i)
    {
      str[i] = (rand() % 94) + 33;
    }
    printf("%s\n", str);
    TurnOver(str);
    printf("%s\n", str);
  }
  else
  {
    printf("Неверная команда!");
    printf("%s", argv[1]);
    return 4;
  }
  clock_gettime(CLOCK_MONOTONIC, &end);
  printf("%" PRId64 "nanosecons", TimeSpecDiff(&start, &end));
  return 0;
}

/*
gcc -masm=intel \
    -fno-asynchronous-unwind-tables \
    -fno-jump-tables \
    -fno-stack-protector \
    -fno-exceptions \
    ./main.c \
    -S -o ./main.s


    Препроцессинг   gcc -E main.c -o main.i
    Компиляция      gcc -S main.i
    Ассемблирование gcc -c main.s
    Линковка        gcc -o exe main.o
*/