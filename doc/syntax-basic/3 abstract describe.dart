abstract class Describe {
  void describe();

  void describeWithEmphasis() {
    print('***');
    describe();
    print('***');
  }
}

class Person extends Describe {
  final String name;
  final int age;

  Person(this.name, this.age);

  @override
  void describe() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  var person = Person('Arbi', 12);
  person.describeWithEmphasis();
}
