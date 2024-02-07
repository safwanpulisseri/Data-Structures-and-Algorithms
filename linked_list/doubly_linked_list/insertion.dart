class Node {
  Node? prev;
  int? data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.prev = tail;
      tail?.next = newNode;
    }
    tail = newNode;
  }

  display() {
    if (head == null) {
      print("empty");
    } else {
      Node? temp = tail;
      while (temp != null) {
        print(temp.data);
        temp = temp.prev;
      }
    }
  }

  void insertAt(int findNext, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null && temp.data != findNext) {
      temp = temp.next;
    }
    newNode.prev = temp;
    newNode.next = temp?.next;
    if (temp == tail) {
      tail = newNode;
    } else {
      temp?.next?.prev = newNode;
    }
    temp?.next = newNode;
  }
}

main() {
  LinkedList list = LinkedList();

  list.display();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.addNode(60);
  list.insertAt(60, 0);
  list.display();
}
