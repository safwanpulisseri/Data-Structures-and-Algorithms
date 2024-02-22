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
    } else {
      rear?.next = newQueue;
    }
    rear = newQueue;
    rear?.next = front;
  }

  deQueue() {
    //front = front?.next;//if want keep element behind the rear OR
    rear?.next = front?.next; //if you want remove element
    front = front?.next;
  }

  display() {
    Node? temp = front;
    do {
      print(temp?.data);
      temp = temp?.next;
    } while (temp != front);
  }
}

void main() {
  Queue queue = Queue();
  queue.enQueue(10);
  queue.enQueue(20);
  queue.enQueue(30);
  queue.enQueue(40);
  queue.enQueue(50);
  queue.deQueue();
  queue.display();
}
