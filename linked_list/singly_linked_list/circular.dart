class Node {
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
      tail?.next = newNode;
    }
    tail = newNode;
    tail?.next = head;
  }

  void display() {
    if (head == null) {
      print('Emty');
    }
    Node? temp = head;
    do {
      print(temp?.data);
      temp = temp?.next;
    } while (temp != head);
  }
}

void main() {
  LinkedList list = LinkedList();
  list.addNode(12);
  list.addNode(13);
  list.addNode(14);
  list.addNode(16);
  list.display();
}
