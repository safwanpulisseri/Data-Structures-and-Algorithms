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

  void delete(int value) {
    Node? temp = head;
    while (temp != null && temp.data != value) {
      temp = temp.next;
    }
    if (temp == head) {
      head = temp?.next;
      head?.prev = null;
      return;
    }
    if (temp == tail) {
      tail = temp?.prev;
      tail?.next = null;
      return;
    }
    temp?.prev?.next = temp.next;
    temp?.next?.prev = temp.prev;
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.delete(30);
  list.display();
}
