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

  // void removeduplicates() {
  //   Node? current = head;

  //   while (current != null) {
  //     Node? next = current.next;

  //     while (next != null && current.data == next.data) {
  //       next = next.next;
  //     }
  //     current.next = next;
  //     if (next == tail) {
  //       tail = current;
  //       tail?.next = null;
  //     }
  //     current = next;
  //   }
  // }
  void removeduplicates() {
    if (head == null || head!.next == null) {
      return; // List is empty or has only one node
    }

    Node? current = head;
    while (current != null) {
      Node? runner = current;
      while (runner!.next != null) {
        if (runner.next!.data == current.data) {
          runner.next!.prev = runner.prev; // Update prev reference of next node
          runner.next = runner.next!.next; // Remove duplicate
        } else {
          runner = runner.next;
        }
      }
      current = current.next;
    }
    display();
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(40);
  list.addNode(100);
  list.addNode(90);
  list.addNode(50);
  list.addNode(100);
  list.addNode(100);
  list.addNode(200);
  list.addNode(10);
  list.addNode(20);
  list.addNode(100);
  list.removeduplicates();

  //list.display();
}
