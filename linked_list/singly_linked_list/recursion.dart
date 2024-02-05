class Node {
  Node? prev;
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.prev = tail;
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display(Node? temp) {
    if (temp == null) {
      return;
    }
    print(temp.data);
    display(temp.prev);
  }

  void printLinked() {
    display(tail);
  }
}

void main() {
  LinkedList list = LinkedList();
  list.addNode(12);
  list.addNode(14);
  list.addNode(16);
  list.addNode(18);

  list.printLinked();
}
