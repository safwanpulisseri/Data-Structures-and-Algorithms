class Node {
  int data;
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
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void toList(List<int> nums) {
    Node? temp = head;
    while (temp != null) {
      nums.add(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  List<int> nums = [];
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.toList(nums);
  list.display();
  print(nums);
}
