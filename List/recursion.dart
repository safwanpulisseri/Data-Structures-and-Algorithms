void printListFunction(List<dynamic> list, int index) {
  // Base case: if the index is equal to the length of the list, return
  if (index == list.length) {
    return;
  }

  // Print the element at the current index
  print(list[index]);

  // Recursively call the function with the next index
  printListFunction(list, index + 1);
}

void main() {
  List<dynamic> myList = [1, 2, 3, 4, 5];

  // Start printing the list from the first element (index 0)
  printListFunction(myList, 0);
}
