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
}

void main() {
  List<int> arr = [10, 20, 30, 30, 40, 50];
  SLinkedList list = SLinkedList();
  for (int i = 0; i < arr.length; i++) {
    list.addNode(arr[i]);
  }
  list.display();
}
