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
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void insert(int nextTo, int value) {
    if (head == null) {
      print('Emtty');
      return;
    } else {
      Node node = Node(value);
      Node? temp = head;
      while (temp != null) {
        if (temp.data == nextTo) {
          node.next = temp.next;
          temp.next = node;
          return;
        }
        temp = temp.next;
      }
    }
  }

  void delete(int value) {
    Node? temp = head, prev = null;
    if (temp == null) {
      return;
    }
    if (temp.data == value) {
      head = temp.next;
    }
    while (temp != null && temp.data != value) {
      prev = temp;
      temp = temp.next;
    }
    prev?.next = temp?.next;
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.insert(10, 15);
  list.delete(15);
  list.display();

  List<int> nums = [1, 2, 3, 4, 5];
  List<int> revrsed = [];
  for (int i = nums.length - 1; i >= 0; i--) {
    revrsed.add(nums[i]);
  }
  print(revrsed);
  String name = 'Safwan';
  String reverseName = name.split('').reversed.join('');
  print(reverseName);
}
