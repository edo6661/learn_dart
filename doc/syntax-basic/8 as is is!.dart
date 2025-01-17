// ignore_for_file: unnecessary_type_check, unnecessary_cast

class Person {
  String firstName;
  Person(this.firstName);
}

void main() {
  implementIs();
  implementAs();
  implementIs2();
}

void implementIs() {
  var employee = Person('Alice');

  if (employee is Person) {
    // Jika `employee` adalah instance dari `Person`, kita bisa mengakses propertinya
    employee.firstName = 'Bob';
    print(employee.firstName); // Output: Bob
  }
}

void implementAs() {
  var person = Person('Charlie');

  // Casting menggunakan `as`
  var employee = person as Person;
  print(employee.firstName); // Output: Charlie
}

void implementIs2() {
  var employee = Person('Eve');

  if (employee is! String) {
    // Jika `employee` BUKAN instansi dari `String`, maka akan masuk ke dalam blok ini
    print('employee bukan tipe String');
  } else {
    print('employee adalah tipe String');
  }
}
