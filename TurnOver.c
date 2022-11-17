#include "TurnOver.h"
void TurnOver(char *str) {
  int i = 0, j, k;
  while (str[i++] != '\0');
  j = i / 2;
  i -= 2;
  do {
	k = i - j;
	str[k] = str[j] ^ str[k];
	str[j] = str[j] ^ str[k];
	str[k] = str[j] ^ str[k];
  } while (str[j++] != '\0');
}