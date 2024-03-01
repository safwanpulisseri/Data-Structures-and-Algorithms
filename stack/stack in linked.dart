class Node {
  int data;
  Node? next;

  Node(this.data);
}

class SLinkedList {
  Node? head;
  Node? tail;

  void push(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  int? pop() {
    if (head == null) {
      print("Stack is empty");
      return null;
    }
    int data = tail!.data;

    if (head == tail) {
      head = null;
      tail = null;
    } else {
      Node? current = head;
      while (current!.next != tail) {
        current = current.next;
      }
      current.next = null;
      tail = current;
    }
    return data;
  }

  int? peek() {
    if (tail == null) {
      print("Stack is empty");
      return null;
    }
    return tail!.data;
  }

  void display() {
    if (head == null) {
      print("Stack is empty");
      return;
    }
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  SLinkedList stack = SLinkedList();
  stack.push(10);
  stack.push(20);
  stack.push(50);

  stack.display();
  print("Top of the stack: ${stack.peek()}");

  stack.pop();
  stack.display();
}
