class Qus {
  List<int> stack1 = [];
  List<int> stack2 = [];

  void enqueue(int item) {
    stack1.add(item);
  }

  int dequeue() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.removeLast();
  }

  void printStack() {
    List<int> combinedStacks = [...stack2, ...stack1.reversed];
    print(combinedStacks);
  }
}

void main() {
  Qus myList = Qus();
  myList.enqueue(10);
  myList.enqueue(20);
  myList.enqueue(30);
  myList.enqueue(40);
  myList.printStack();
  myList.dequeue();
  myList.printStack();
}
