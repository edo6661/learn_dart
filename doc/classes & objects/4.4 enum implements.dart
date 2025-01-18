abstract class Drivable {
  void drive();
}

enum Vehicle implements Drivable {
  car,
  bus,
  bicycle;

  @override
  void drive() {
    print('Driving ${this}');
  }
}

void main() {
  Vehicle.car.drive(); // Output: Driving Vehicle.car
}
