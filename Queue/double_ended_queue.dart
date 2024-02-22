class Node {
  int data;
  Node? next;

  Node(this.data);
}

class Deque {
  Node? front;
  Node? rear;

  // Enqueue at the rear
  void enQueueRear(int data) {
    Node newNode = Node(data);
    if (front == null) {
      front = newNode;
      rear = newNode;
    } else {
      rear!.next = newNode;
    }
    rear = newNode;
  }

  // Enqueue at the front
  void enQueueFront(int data) {
    Node newNode = Node(data);
    if (front == null) {
      front = newNode;
      rear = newNode;
    } else {
      newNode.next = front;
    }
    front = newNode;
  }

  // Dequeue from the front
  void deQueueFront() {
    if (front != null) {
      front = front!.next;
      if (front == null) {
        rear = null;
      }
    }
  }

  // Dequeue from the rear
  void deQueueRear() {
    if (front != null) {
      if (front == rear) {
        front = null;
        rear = null;
      } else {
        Node? current = front;
        while (current!.next != rear) {
          current = current.next;
        }
        current.next = null;
        rear = current;
      }
    }
  }

  // Display the deque
  void display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Deque deque = Deque();
  deque.enQueueRear(10);
  deque.enQueueRear(20);
  deque.enQueueFront(5);
  deque.enQueueRear(30);
  deque.display(); // Output: 5, 10, 20, 30
  deque.deQueueFront();
  deque.deQueueRear();
  deque.display(); // Output: 10, 20
}
