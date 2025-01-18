// ! Modifer final di Dart digunakan untuk menutup hierarki tipe. Artinya, kelas yang diberi modifier final tidak bisa diwariskan atau diimplementasikan oleh kelas lain dari luar library tempat kelas tersebut didefinisikan.
final class Vehicle {
  void moveForward(int meters) {
    print("Vehicle moves $meters meters");
  }
}

// Ini bisa, karena kita tidak mencoba mewarisi atau mengimplementasikan Vehicle dari luar library.
Vehicle myVehicle = Vehicle();

// ERROR: Tidak bisa diwariskan (extends) karena kelas Vehicle adalah final.
// class Car extends Vehicle {
//   int passengers = 4;
// }

// ERROR: Tidak bisa diimplementasikan karena kelas Vehicle adalah final.
// class MockVehicle implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     print("MockVehicle moves $meters meters");
//   }
// }
