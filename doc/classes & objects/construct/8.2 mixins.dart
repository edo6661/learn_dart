// !  Kita bisa mengakses state dari subkelas mixin dengan mendeklarasikan anggota sebagai abstrak dalam mixin. Ini memaksa kelas yang menggunakan mixin untuk mendefinisikan anggota tersebut.

mixin NameIdentity {
  String get name; // Anggota abstrak

  @override
  bool operator ==(other) => other is NameIdentity && name == other.name;
}

class Person with NameIdentity {
  @override
  final String name;

  Person(this.name);
}

void main() {
  final person1 = Person('John Doe');
  final person2 = Person('John Doe');

  print(person1 == person2); // true
  print(person1.name); // John Doe
}
