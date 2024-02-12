class Node {
  var data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addNode(data) {
    final newNode = Node(data);
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

  getLast() {
    Node? curr = head;
    var lastData;
    while (curr != null) {
      if (curr.next == null) {
        lastData = curr.data;
      }
      curr = curr.next;
    }
    return lastData;
  }
  //   void getLast(){
  //     print(tail?.data);
  // }

  getSecondLast() {
    Node? curr = head;
    var secondLastData;
    if (curr == null || curr.next == null) {
      return null; // Less than two elements in the list
    }
    while (curr?.next!.next != null) {
      curr = curr?.next;
    }
    secondLastData = curr?.data;
    return secondLastData;
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
  final myList = LinkedList();
  myList.addNode(10);
  myList.addNode(11);
//   myList.addNode(12);
//   myList.addNode(13);
  print("Last Element: ${myList.getLast()}");
  print("Second Last Element: ${myList.getSecondLast()}");
  myList.printList();
}
