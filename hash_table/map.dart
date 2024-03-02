void main() {
  Map<String, int> students = {
    'Safwan': 20,
    'Sufiyan': 15,
    'Arun': 10,
    'Joy': 5
  };
  students['Akash'] = 2;
  students['Arun'] = 13;
  students.remove('Joy');
  print(students);
}
