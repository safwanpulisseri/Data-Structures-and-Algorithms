void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];
  for (int i = arr.length - 1; i >= 0; i--) {
    print(arr[i]);
  }
  List<dynamic> arr1 = ['Apple', 'Banana', 'Grapes'];
  int answer = arr1.indexOf('Banana');
  print(answer);
}
