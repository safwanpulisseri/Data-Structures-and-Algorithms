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

  atBegining(int data) {
    Node? newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }
}

void main() {
  SLinkedList list = SLinkedList();
  list.display();

  list.addNode(10);
  list.addNode(20);
  list.addNode(50);
  list.atBegining(5);

  list.display();
}
