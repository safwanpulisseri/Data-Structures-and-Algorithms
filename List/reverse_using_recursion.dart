void printListFunction(List<dynamic> list, int index) {
  if (index == list.length) {
    return;
  }

  printListFunction(list, index + 1);
  print(list[index]);
}

void main() {
  List<dynamic> myList = [1, 2, 3, 4, 5];

  printListFunction(myList, 0);
}
