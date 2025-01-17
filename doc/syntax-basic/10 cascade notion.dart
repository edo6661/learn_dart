class Person {
  String? firstName;
  String? workType;
  int age = 0;

  void describe() {
    print('Name: $firstName, Work: $workType');
  }
}

void main() {
  Person()
    ..firstName = 'Arbi'
    ..workType = 'Developer'
    ..describe();
}
