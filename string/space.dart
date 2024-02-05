void main() {
  String name = "Hello     world    how are    you";
  List<String> newName = [];
  bool findSpace = false;
  for (int i = 0; i < name.length; i++) {
    if (name[i] != ' ') {
      newName.add(name[i]);
      findSpace = true;
    } else {
      if (findSpace) {
        newName.add(' ');
        findSpace = false;
      }
    }
  }
  String answer = newName.join();
  print(answer);
}
