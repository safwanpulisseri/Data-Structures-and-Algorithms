class Stack {
  List<int> stackList = [];
  push(int data) {
    stackList.add(data);
  }

  peekAll() {
    if (stackList.isEmpty) {
      print('null');
    } else {
      print(stackList);
    }
  }

  insertAtBottom(int newData) {
    stackList.insert(0, newData);
  }
}

void main() {
  Stack stack = Stack();
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.insertAtBottom(10);
  stack.peekAll();
}
