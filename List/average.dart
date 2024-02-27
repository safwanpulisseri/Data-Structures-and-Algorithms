void main() {
  List<double> arr = [1.2, 2.2, 3.3, 4.4, 5.5];
  double sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  print(sum / arr.length);
}
