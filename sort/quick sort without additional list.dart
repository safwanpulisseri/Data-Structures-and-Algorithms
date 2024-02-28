void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int partitionIndex = partition(list, low, high);
    quickSort(list, low, partitionIndex - 1);
    quickSort(list, partitionIndex + 1, high);
  }
}

int partition(List<int> list, int low, int high) {
  int pivot = list[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }

  int temp = list[i + 1];
  list[i + 1] = list[high];
  list[high] = temp;

  return i + 1;
}

void main() {
  List<int> list = [2, 1, 3, 4, 6, 5, 8, 6, 9, 7];
  quickSort(list, 0, list.length - 1);
  print(list);
}
