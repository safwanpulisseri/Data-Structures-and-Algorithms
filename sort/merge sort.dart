mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int mid = arr.length ~/ 2;
  List<int> leftHalf = mergeSort(arr.sublist(0, mid));
  List<int> rightHalf = mergeSort(arr.sublist(mid));
  List<int> mergedList = [];
  int i = 0, j = 0;

  while (i < leftHalf.length && j < rightHalf.length) {
    if (leftHalf[i] < rightHalf[j]) {
      mergedList.add(leftHalf[i]);
      i++;
    } else {
      mergedList.add(rightHalf[j]);
      j++;
    }
  }

  while (i < leftHalf.length) {
    mergedList.add(leftHalf[i]);
    i++;
  }

  while (j < rightHalf.length) {
    mergedList.add(rightHalf[j]);
    j++;
  }
  return mergedList;
}

void main() {
  List<int> mylist = [38, 27, 43, 10, 39, 28, 44, 11];
  print("Original array: $mylist");

  List<int> sortedList = mergeSort(mylist);

  print("Sorted array: $sortedList");
}
