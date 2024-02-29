class Stack {
  List<int> stackList = [];
  push(int data) {
    stackList.add(data);
  }

  pop() {
    int k = stackList.last;
    stackList.removeLast();
    return k;
  }

  reverse() {
    stackList = stackReverse();
  }

  List<int> temp = [];

  List<int> stackReverse() {
    if (stackList.length > 0) {
      int k = pop();
      temp.add(k);
      stackReverse();
    }
    return temp;
  }

  peekAll() {
    if (stackList.isEmpty) {
      print('Null');
    } else {
      print(stackList);
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  //stack.pop();

  stack.peekAll();
  stack.reverse();
  stack.peekAll();
}
