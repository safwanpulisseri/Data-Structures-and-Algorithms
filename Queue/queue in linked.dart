class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;
  enQueue(int data) {
    Node newQueue = Node(data);
    if (front == null) {
      front = newQueue;
      rear = newQueue;
    } else {
      rear?.next = newQueue;
    }
    rear = newQueue;
  }

  deQueue() {
    if (front != null) {
      front = front?.next;
//       if (front == null) {
//         rear = null;
//       }
    }
  }

  display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enQueue(10);
  queue.enQueue(20);
  queue.enQueue(30);
  queue.enQueue(40);
  queue.deQueue();
  queue.display();
}
