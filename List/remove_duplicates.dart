void main() {
  List<int> arr = [1, 2, 1, 3, 4, 3, 5, 4];
  Set<int> removeDupe = Set<int>.from(arr);
  //arr.clear();
  arr = removeDupe.toList();
  print(arr);
}
