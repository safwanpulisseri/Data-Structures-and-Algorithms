class Node {
  String key;
  dynamic data;
  Node? next;
  Node(this.key, this.data);
}

class HashTable {
  List<Node?>? table;
  int size;

  HashTable(this.size) {
    table = List.generate(size, (index) => null);
  }
  _getIndex(String key) {
    return key.hashCode.abs() % size;
  }

  void add(String key, dynamic data) {
    int index = _getIndex(key);
    Node? newNode = Node(key, data);
    if (table?[index] == null) {
      table?[index] = newNode;
    } else {
      newNode.next = table?[index];
      table?[index] = newNode;
    }
  }

  void getAll() {
    for (int i = 0; i < size; i++) {
      if (table?[i] != null) {
        Node? temp = table?[i];
        print('index $i :');
        while (temp != null) {
          print(temp.data);
          temp = temp.next;
        }
      } else {
        print('Index $i :not found');
      }
    }
  }

  void update(String key, dynamic newData) {
    int index = _getIndex(key);
    Node? temp = table?[index];
    while (temp != null) {
      if (temp.key == key) {
        temp.data = newData;
      }
      temp = temp.next;
    }
  }
}

void main() {
  HashTable hashTable = HashTable(6);
  hashTable.add('Safwan', 20);
  hashTable.add('Sufiyan', 30);
  hashTable.add('Shifan', 40);
  hashTable.update('Sufiyan', 15);
  hashTable.getAll();
}
