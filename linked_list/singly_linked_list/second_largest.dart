class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addNode(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      Node? curr = head;
      while (curr!.next != null) {
        curr = curr.next;
      }
      curr.next = newNode;
    }
  }

  int findSecondLargestElement() {
    int fMax = 0;
    int secondLargest = 0;

    Node? current = head;

    while (current != null) {
      if (current.data > fMax) {
        secondLargest = fMax;
        fMax = current.data;
      } else if (current.data > secondLargest && current.data != fMax) {
        secondLargest = current.data;
      }
      current = current.next;
    }

    return secondLargest;
  }

  void printList() {
    Node? curr = head;

    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }
}

void main() {
  LinkedList myList = LinkedList();
  myList.addNode(60);
  myList.addNode(50);
  myList.addNode(40);
  myList.addNode(30);
  myList.addNode(20);
  myList.addNode(10);
  myList.printList();
  print("Second largest num: ${myList.findSecondLargestElement()}");
}
