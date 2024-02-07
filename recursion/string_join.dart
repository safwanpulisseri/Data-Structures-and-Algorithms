// String joinString(String str, [index = 0]) {
//   if (index == str.length - 1) {
//     return str[index];
//   } else {
//     return str[index] + joinString(str, index + 1);
//   }
// }

// void main() {
//   List<String> strList = ["Safwan", " Puli", "sseri"];
//   String name = joinString(strList.join());
//   print(name);
// }
void main() {
  List<String> name = ["Safwan", " Puli", "sseri"];
  String name1 = recursion(name);
  print(name1);
}

recursion(List<String> str, [index = 0]) {
  if (str.length - 1 == index) {
    return str[index];
  } else {
    return str[0] + recursion(str.sublist(index + 1));
  }
}
