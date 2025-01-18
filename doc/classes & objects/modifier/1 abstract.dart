abstract class Vehicle {
  String color = 'red';
  void moveForward(int meters) {
    print('Moving forward $meters meters');
  }
}

// Error: Can't be constructed.
// Vehicle myVehicle = Vehicle();

// Can be extended.
// ! extends digunakan untuk mewarisi kelas lain. Kelas anak bisa menggunakan metode dan properti dari kelas induk, dan bisa mengubah (override) metode yang ada, Kelas anak mewarisi implementasi dari kelas induk.

class Car extends Vehicle {
  // ! tidak harus mengimplementasikan semua metode dan properti yang ada di kelas induk.
  int passengers = 4;
  void test() {
    print(super.color);
  }

  void moveForward(int meters) {
    print('car $meters meters');
  }
}

// Can be implemented.
// ! implements digunakan untuk mengikuti kontrak dari kelas lain (interface). Kelas yang mengimplementasikan harus menyediakan implementasi sendiri untuk semua metode yang didefinisikan dalam interface tersebut.
// ! implements: Kelas anak wajib membuat implementasi sendiri untuk metode yang didefinisikan di interface.

class MockVehicle implements Vehicle {
  // ! harus mengimplementasikan semua metode dan properti yang ada di kelas induk.
  String color = 'blue';
  @override
  void moveForward(int meters) {
    print('MockVehicle $meters meters');
  }
}

void main() {
  Car myCar = Car();
  myCar.moveForward(10);

  MockVehicle myMockVehicle = MockVehicle();
  myMockVehicle.moveForward(10);
}
