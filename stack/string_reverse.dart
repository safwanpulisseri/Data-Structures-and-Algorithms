void main() {
  String name = 'Safwan Pulisseri';
  String answer = push(name);
  print(answer);
}

push(String name) {
  List<String> stack = [];
  for (int i = 0; i < name.length; i++) {
    stack.add(name[i]);
  }
  String reversedName = '';
  while (stack.isNotEmpty) {
    reversedName += stack.removeLast();
  }
  return reversedName;
}
