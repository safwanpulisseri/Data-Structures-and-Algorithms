int sumList(List<int> list) {
  if (list.isEmpty) {
    return 0; // Base case: return 0 for an empty list
  } else {
    return list[0] +
        sumList(list.sublist(1)); // Recursively sum the rest of the list
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int sum = sumList(numbers);
  print('Sum of the list: $sum'); // Output: Sum of the list: 15
}
// void main(){
//   List<int>list=[1,2,3,4,5];
//   int sum=recursion(list);
//   print(sum);
// }
// recursion(List<int>list,[index=0]){
//   if(list.isEmpty){
//     return 0;
//   }else{
//     return list[0]+recursion(list.sublist(index+1));
//   }
// }