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

  void removeduplicates() {
    Node? current = head;

    while (current != null) {
      Node? next = current.next;

      while (next != null && current.data == next.data) {
        next = next.next;
      }
      current.next = next;
      if (next == tail) {
        tail = current;
        tail?.next = null;
      }
      current = next;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addNode(10);
  list.addNode(10);
  list.addNode(30);
  list.addNode(20);
  list.addNode(40);
  list.removeduplicates();

  list.display();
}
