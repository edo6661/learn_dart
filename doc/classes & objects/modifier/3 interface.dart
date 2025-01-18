// ! interface modifier digunakan untuk mendefinisikan interface pada sebuah kelas. Interface adalah kontrak yang menetapkan metode-metode yang harus ada dalam kelas yang mengimplementasikannya, tapi tanpa memberikan implementasi metode tersebut.
// ! Yang bisa mengimplementasikan interface: Kelas lain yang berada di luar library yang sama dengan interface tersebut, bisa mengimplementasikan interface ini dan harus memberikan implementasi untuk semua metode yang ada di dalamnya.
// !
interface class Vehicle {
  void moveForward(int meters) {
    print("Moving forward $meters meters");
  }
}

// ! ini seharusnya error kata doc, karena interface tidak bisa diwarisi, tapi gatau kenapa ini bisa dijalanin.
// ERROR: Can't be inherited.
class Car extends Vehicle {
  // Error, tidak bisa mewarisi dari interface Vehicle.
  int passengers = 4;
  // ...
}

// Can be implemented.
class MockVehicle implements Vehicle {
  // Ini benar, bisa mengimplementasikan interface Vehicle.
  @override
  void moveForward(int meters) {
    print("MockVehicle moves $meters meters");
  }
}

void main() {
  Car myCar = Car();
  myCar.moveForward(
      10); // Error, tidak bisa mengakses metode moveForward dari interface Vehicle.

  MockVehicle myMockVehicle = MockVehicle();
  myMockVehicle.moveForward(10); // Output: MockVehicle moves 10 meters
}
