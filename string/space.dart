import 'dart:io';

void main() {
  String val = "Abdul khader";
  String newVal = val.split('').reversed.join('');
  print(newVal);
  String val2 = "    Arun Kumar";
  for (int i = val2.length - 1; i >= 0; i--) {
    stdout.write(val2[i]);
  }
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
