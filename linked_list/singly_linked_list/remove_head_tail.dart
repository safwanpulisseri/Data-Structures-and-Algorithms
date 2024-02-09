class Node {
  int data;
  Node? next;

  Node(this.data);
}

class SLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
    print('Node Added');
  }

  void display() {
    if (head == null) {
      print("Empty");
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  removeHead() {
    Node? temp = head;
    if (head == tail) {
      head = null;
      tail = null;
      return;
    }
    head = temp?.next;
  }

  removeTail() {
    if (head == tail) {
      head = null;
      tail = null;
    }
    Node? temp = head, prev = null;
    while (temp != null && temp.next != null) {
      prev = temp;
      temp = temp.next;
    }
    tail = prev;
    tail?.next = null;
  }
}

void main() {
  SLinkedList list = SLinkedList();
  list.display();

  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.removeHead();
  list.removeTail();
  list.display();
}
