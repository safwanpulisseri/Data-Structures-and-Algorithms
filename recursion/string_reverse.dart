// String reverseString(String str, [int index = 0]) {
//   if (index == str.length) {
//     return "";
//   }

//   return reverseString(str, index + 1) + str[index];
// }

// void main() {
//   print(reverseString('qazwsxedc'));
// }

String reversedString(String str) {
  if (str.isEmpty) {
    return str;
  } else {
    return reversedString(str.substring(1)) + str[0];
  }
}

void main() {
  String name = 'Suhail';
  String reString = reversedString(name);
  print(reString);
}
