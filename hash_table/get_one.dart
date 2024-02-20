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

  void get(String key) {
    int index = _getIndex(key);
    Node? temp = table[index];
    while (temp != null) {
      if (temp.key == key) {
        print(temp.data);
        return;
      }
      temp = temp.next;
    }
    print('Key not found.');
  }
}

void main() {
  HashTable hashTable = HashTable(4);
  hashTable.add('Safwan', 20);
  hashTable.add('Sufiyan', 29);
  hashTable.add('Shifan', 21);
  hashTable.get('Sufiyan');
}
