// a.dart
// ignore_for_file: unused_local_variable, unused_element

sealed class Vehicle {
  String color = 'red';
  void printColor() {
    print(color);
  }
} // Kelas utama yang sealed

class Car extends Vehicle {} // Subtipe yang sah

class Motorcycle extends Vehicle {} // Subtipe yang sah

class Truck implements Vehicle {
  @override
  String color = 'blue';
  @override
  void printColor() {
    print(color);
  }
} // Subtipe yang sah

void main() {
  Car().printColor(); // Output: red
  Truck().printColor(); // Output: blue

// ERROR: Tidak bisa membuat instance dari kelas sealed
  // Vehicle myVehicle = Vehicle();

// Bisa membuat instance dari subtipe yang valid
  Vehicle myCar = Car(); // Ini sah, karena Car adalah subtipe dari Vehicle

  // String getVehicleSound(Vehicle vehicle) {
  //   // ERROR: Pengecekan switch tidak lengkap
  //   return switch (vehicle) {
  //     Car() => 'vroom', // Mengatasi subtipe Car
  //     Truck() => 'VROOOOMM', // Mengatasi subtipe Truck
  //   };
  // }
}
