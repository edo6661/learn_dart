// ! Modifier base digunakan untuk membuat kelas yang hanya boleh di-extend (diturunkan) dalam library yang sama. Kelas yang diberi modifier base tidak boleh di-implementasikan oleh kelas lain dari luar library tersebut.
// ! Dengan kata lain, base memastikan bahwa hanya inheritance (pewarisan) yang diperbolehkan dalam library yang sama, dan tidak memungkinkan untuk mengimplementasikan kelas tersebut di luar library.

base class Vehicle {
  void moveForward(int meters) {
    print("vehicle $meters meters");
  }
}

// Can be constructed.
Vehicle myVehicle = Vehicle();

// Can be extended.
base class Car extends Vehicle {
  int passengers = 4;
  // ...
}

// ERROR: Can't be implemented.
// ! base modifier hanya mengizinkan inheritance (pewarisan), jadi jika kamu ingin menggunakan Vehicle dengan implements, kamu harus menghapus base dari Vehicle atau menggunakan kelas lain tanpa modifier base.

// class MockVehicle implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     print("MockVehicle $meters meters");
//   }
// }

void main() {
  Car myCar = Car();
  myCar.moveForward(10); // Output: vehicle 10 meters

  // Jika ingin menggunakan MockVehicle, hapus modifier base dari Vehicle atau ubah kelas MockVehicle menjadi kelas yang lain.
  // MockVehicle myMockVehicle = MockVehicle();
  // myMockVehicle.moveForward(10); // Output: MockVehicle 10 meters
}
