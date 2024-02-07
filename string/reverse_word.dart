void main() {
  String name2 = "hello world";

  print(returnFm(name2));
}

String returnFm(String name) {
  return name.split(' ').reversed.join(' ');
}
