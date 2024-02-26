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

  int _getIndex(String key) {
    return key.hashCode.abs() % size;
  }

  void add(String key, dynamic data) {
    int index = _getIndex(key);
    Node newNode = Node(key, data);
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
  hashTable.add('SAfwan', 20);
  hashTable.add('Sufiyan', 29);
  hashTable.add('SHifan', 21);

  hashTable.getAll();
}
