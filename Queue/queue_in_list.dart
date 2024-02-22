class Queue {
  List<int> listQueue = [];

  void enqueue(int data) {
    listQueue.add(data);
  }

  dequeue() {
    if (listQueue.isNotEmpty) {
      return listQueue.removeAt(0);
    } else {
      print('Queue is empty');
    }
  }

  void printQueue() {
    print(listQueue);
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.printQueue();

  int dequeuedElement = queue.dequeue();
  print('Dequeued element: $dequeuedElement');
  queue.printQueue();
}
