class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedList {
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

  insert(int nextTo, int value) {
    if (head == null) {
      print('empty');
      return;
    } else {
      Node node = Node(value);
      Node? temp = head;
      while (temp != null) {
        if (temp.data == nextTo) {
          if (temp.next == null) {
            temp.next = node;
            return;
          }
          node.next = temp.next;
          temp.next = node;
          return;
        }
        temp = temp.next;
      }
    }
    print('$nextTo not found in the linked list');
    return;
  }

  // void insertAfter(int nextTo, int data) {
  //   Node newNode = new Node(data);
  //   Node? temp = head;

  //   while (temp != null && temp.data != nextTo) {
  //     temp = temp.next;
  //   }
  //   if (temp == null) {
  //     return;
  //   }
  //   if (temp == tail) {
  //     tail?.next = newNode;
  //     tail = newNode;
  //     return;
  //   }
  //   newNode.next = temp.next;
  //   temp.next = newNode;
  // }
}

void main() {
  LinkedList list = LinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.insert(20, 25);
  list.display();
}
