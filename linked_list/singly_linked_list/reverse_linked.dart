class Node {
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
      tail?.next = newNode;
    }
    tail = newNode;
  }

  display() {
    Node? temp = head;
    if (temp == null) {
      print('empty');
    } else {
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  reverseLinkedList() {
    if (head == null) {
      print('empty');
    } else {
      Node? current = head;
      Node? prev;
      Node? next;
      while (current != null) {
        next = current.next;
        current.next = prev;
        prev = current;
        current = next;
      }
      head = prev;
      display();
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.display();
  list.reverseLinkedList();
}
