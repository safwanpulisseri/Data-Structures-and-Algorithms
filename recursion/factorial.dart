// int facto(int a) {
//   if (a > 0) {
//     return a * facto(a - 1);
//   }
//   if (a == 0) {
//     return 1;
//   }
//   return 0;
// }

// main() {
//   int k = facto(10);
//   print(k);
// }

void main() {
  int facto = 10;
  int answer = findFacto(facto);
  print(answer);
}

findFacto(int facto) {
  int value = 1;
  for (int i = 1; i <= facto; i++) {
    value *= i;
  }
  return value;
}
