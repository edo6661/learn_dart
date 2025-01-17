void main() {
  genericImplementation();
  cascadeNotionImplementation();
}

void genericImplementation() {
  List<T> createList<T>(T val, int count) {
    return List<T>.filled(count, val);
  }

  var intList = createList<int>(42, 5);
  var stringList = createList<String>("Hello", 3);
  print(intList);
  print(stringList);
}

class Person {
  String name = "";
  int age = 0;

  void printPerson() {
    print("Name: $name, Age: $age");
  }
}

void cascadeNotionImplementation() {
  Person()
    ..name = "Dart"
    ..age = 25
    ..printPerson();
}
