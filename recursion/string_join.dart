String joinString(String str, [int index = 0]) {
  if (index == str.length - 1) {
    return str[index];
  } else {
    return str[index] + joinString(str, index + 1);
  }
}

void main() {
  List<String> strList = ["dsfsdfdsf", "fdgfdf", "gfdgfdgfd"];
  String name = joinString(strList.join());
  print(name);
}
