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

  void mergeSortedLists(SLinkedList list1, SLinkedList list2) {
    Node? curr1 = list1.head;
    Node? curr2 = list2.head;

    while (curr1 != null && curr2 != null) {
      if (curr1.data < curr2.data) {
        addNode(curr1.data);
        curr1 = curr1.next;
      } else {
        addNode(curr2.data);
        curr2 = curr2.next;
      }
    }

    while (curr1 != null) {
      addNode(curr1.data);
      curr1 = curr1.next;
    }

    while (curr2 != null) {
      addNode(curr2.data);
      curr2 = curr2.next;
    }
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
}

void main() {
  SLinkedList list1 = SLinkedList();
  list1.addNode(5);
  list1.addNode(15);
  list1.addNode(25);

  SLinkedList list2 = SLinkedList();
  list2.addNode(10);
  list2.addNode(20);
  list2.addNode(30);

  SLinkedList mergedList = SLinkedList();
  mergedList.mergeSortedLists(list1, list2);

  print("Merged List:");
  mergedList.display();
  mergedList.deletion(20);
  mergedList.display();
}
