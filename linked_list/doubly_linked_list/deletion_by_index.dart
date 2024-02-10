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
      print('Empty list');
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void deleteNode(int position) {
    if (head == null) {
      print('Empty list');
      return;
    }

    Node? temp = head;

    for (int i = 1; temp != null && i < position; i++) {
      temp = temp.next;
    }

    if (temp == null) {
      print('Invalid position');
      return;
    }

    if (temp.prev != null) {
      temp.prev!.next = temp.next;
    } else {
      head = temp.next;
    }

    if (temp.next != null) {
      temp.next!.prev = temp.prev;
    } else {
      tail = temp.prev;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);

  int positionToDelete = 1;
  list.deleteNode(positionToDelete);

  list.display();
}
