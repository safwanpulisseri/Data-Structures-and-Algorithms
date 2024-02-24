void main() {
  // List<String> arr = ['b', 'a', 'u', 'z', 'e', 't', 's'];
  // arr.sort();
  // print(arr);
  List<String> arr = [
    'Tuesday',
    'Monday',
    'Saturday',
    'Thursday',
    'Sunday',
    'Wednesday',
    'Friday'
  ];
  arr.sort((a, b) => daysOfValues(a).compareTo(daysOfValues(b)));
  print(arr);
}

int daysOfValues(String day) {
  switch (day) {
    case 'Monday':
      return 1;
    case 'Tuesday':
      return 2;
    case 'Wednesday':
      return 3;
    case 'Thursday':
      return 4;
    case 'Friday':
      return 5;
    case 'Saturday':
      return 6;
    case 'Sunday':
      return 7;

    default:
      return 0;
  }
}
