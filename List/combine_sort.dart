void main() {
  List<int> arr1 = [10, 20, 30];
  List<int> arr2 = [35, 25, 15];
  List<int> arr3 = combine(arr1, arr2);
  print(arr3);
}

combine(List<int> arr1, List<int> arr2) {
  List<int> answer = [...arr1, ...arr2];
  answer.sort();
  return answer;
}
