void main() {
  int count = 10;
  for (int i = 0; i < count; i++) {
    print(fibnacc(i));
  }
}

int fibnacc(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibnacc(n - 1) + fibnacc(n - 2);
  }
}
