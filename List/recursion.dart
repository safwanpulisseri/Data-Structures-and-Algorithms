void printListFunction(List<dynamic> list, int index) {
  // Base case
  if (index == list.length) {
    return;
  }

  print(list[index]);

  printListFunction(list, index + 1);
}

void main() {
  List<dynamic> myList = [1, 2, 3, 4, 5];
  printListFunction(myList, 0);
}
