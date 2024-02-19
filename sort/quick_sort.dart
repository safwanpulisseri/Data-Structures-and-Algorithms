List<int> quickS(List<int> list) {
  if (list.length <= 1) {
    return list;
  }
  int pivot = list[list.length ~/ 2];
  List<int> left = [];
  List<int> right = [];
  List<int> center = [];

  for (int nums in list) {
    if (nums < pivot) {
      left.add(nums);
    } else if (nums == pivot) {
      center.add(nums);
    } else {
      right.add(nums);
    }
  }
  return [...quickS(left), ...center, ...quickS(right)];
}

void main() {
  List<int> list = [2, 1, 3, 4, 6, 5, 8, 6, 9, 7];
  print(quickS(list));
}
