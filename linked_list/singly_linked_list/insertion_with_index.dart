class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    if (head == null) {
      print('Emtty');
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void deleteIndex(int postion) {
    Node? temp = head;

    if (postion == 0) {
      head = temp?.next;
      return;
    }

    for (int i = 0; temp != null && i < postion - 1; i++) {
      temp = temp.next;
    }
    if (temp == null || temp.next == null) {
      return;
    }

    Node? newNode = temp.next!.next;
    temp.next = newNode;
  }
}

void main() {
  LinkedList list = LinkedList();
  list.addNode(12);
  list.addNode(13);
  list.addNode(14);
  list.addNode(15);
  list.addNode(16);
  list.addNode(17);
  int nth = 2;
  list.deleteIndex(nth);
  list.display();
}
