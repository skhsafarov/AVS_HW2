#define STR_CAPACITY 10240
#include <stdio.h>
int main() {
  char arr[STR_CAPACITY];
  int i = 0, j, k;
  scanf("%s", arr);
  while (arr[i++] != '\0');
  j = i / 2;
  i -= 2;
  do {
	k = i - j;
	arr[k] = arr[j] ^ arr[k];
	arr[j] = arr[j] ^ arr[k];
	arr[k] = arr[j] ^ arr[k];
  } while (arr[j++] != '\0');
  printf("%s", arr);
  return 0;
}
