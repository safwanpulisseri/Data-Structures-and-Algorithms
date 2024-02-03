class Node {
  Node? prev;
  int data;
  Node? next;
  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    if (head == null) {
      print('Emty list');
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.display();
}
