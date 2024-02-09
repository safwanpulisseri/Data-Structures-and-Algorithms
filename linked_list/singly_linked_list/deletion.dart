class Node {
  int data;
  Node? next;

  Node(this.data);
}

class linkedlist {
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
  }

  void deletion(int value) {
    Node? temp = head, prev = null;
    if (temp != null && temp.data == value) {
      head = temp.next;
      return;
    }

    while (temp != null && temp.data != value) {
      prev = temp;
      temp = temp.next;
    }
    prev?.next = temp?.next;
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }
  }

  void display() {
    if (head == null) {
      print('Emty');
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  linkedlist list = linkedlist();
  list.addNode(12);
  list.addNode(39);
  list.addNode(45);

  list.deletion(12);
  list.display();
}
