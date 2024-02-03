main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  find(List<int> numbers, int a) {
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] == a) {
        print('found element in the list');
        return;
      }
    }
    print('not found');
  }

  find(numbers, 20);
}
