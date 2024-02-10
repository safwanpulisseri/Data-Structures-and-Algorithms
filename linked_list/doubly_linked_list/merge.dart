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

  void mergeDoubly(DoublyLinkedList list1, DoublyLinkedList list2) {
    Node? curr1 = list1.head;
    Node? curr2 = list2.head;
    while (curr1 != null) {
      addNode(curr1.data);
      curr1 = curr1.next;
    }
    while (curr2 != null) {
      addNode(curr2.data);
      curr2 = curr2.next;
    }
  }
}

void main() {
  DoublyLinkedList list1 = DoublyLinkedList();
  list1.addNode(10);
  list1.addNode(20);
  list1.addNode(30);

  DoublyLinkedList list2 = DoublyLinkedList();
  list2.addNode(40);
  list2.addNode(50);
  list2.addNode(60);

  DoublyLinkedList list3 = DoublyLinkedList();

  list3.mergeDoubly(list1, list2);
  list3.display();
}
