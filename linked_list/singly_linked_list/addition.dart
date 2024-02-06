class Node {
  int data;
  Node? next;

  Node(this.data);
//Node(int data) {
//this.data = data;
//}
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

  LinkedtoList(List<int> arr) {
    Node? temp = head;
    while (temp != null) {
      arr.add(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  SLinkedList list = SLinkedList();
  List<int> arr = [];
  list.display();

  list.addNode(10);
  list.addNode(20);
  list.addNode(50);

  list.display();
  list.LinkedtoList(arr);
  print(arr);
}
