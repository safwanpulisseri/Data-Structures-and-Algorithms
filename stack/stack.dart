class Stack {
  List<int> listStack = [];

  void push(data) {
    listStack.add(data);
  }

  pop() {
    //int k = listStack.last;
    listStack.removeLast();
    // return k;
  }

  void peekAll() {
    if (listStack.isEmpty) {
      print('empty');
    } else {
      print(listStack);
    }
  }
}

main() {
  Stack stack = Stack();
  stack.push(20);
  stack.push(50);
  stack.push(99);
  stack.pop();
  stack.peekAll();
  // print(stack.listStack);
}
