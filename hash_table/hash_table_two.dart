class Node {
  String key;
  dynamic data;
  Node? next;

  Node(this.key, this.data);
}

class HashTable {
  late List<Node> table; // Use late to defer initialization until runtime.
  int size;

  HashTable(this.size) {
    table = List.generate(size, (_) => Node('', null));
  }
  int _getIndex(String key) => key.hashCode % size;

  void add(String key, dynamic data) {
    int index = _getIndex(key);
    Node newNode = Node(key, data);

    if (table[index].data == null) {
      table[index] = newNode;
    } else {
      newNode.next = table[index].next;
      table[index].next = newNode;
    }
  }

  void getAll() {
    for (int i = 0; i < size; i++) {
      if (table[i].data != null) {
        Node? temp = table[i];
        print('At index $i:');
        while (temp != null) {
          print('${temp.data}');
          temp = temp.next;
        }
      } else {
        print('At index $i, there is no value found.');
      }
    }
  }
}

void main() {
  HashTable hashTable = HashTable(5);
  hashTable.add('Safwan', 20);
  hashTable.add('Sufiyan', 15);
  hashTable.add('Shifan', 10);

  hashTable.getAll();
}
