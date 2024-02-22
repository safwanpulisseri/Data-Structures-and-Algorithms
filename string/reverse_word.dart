import 'dart:io';

void main() {
  String name2 = "hello world";
  print(returnFm(name2));

  String val = "Abdul khader";
  String newVal = val.split('').reversed.join('');
  print(newVal);
  String val2 = "    Arun Kumar";
  for (int i = val2.length - 1; i >= 0; i--) {
    stdout.write(val2[i]);
  }
}

String returnFm(String name) {
  return name.split(' ').reversed.join(' ');
}
