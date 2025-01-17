void main() {
  implementThis();
  implementShadowing();
}

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void printCar() {
    print("Brand: $brand, Year: $year");
  }
}

void implementThis() {
  var car = Car("Toyota", 2021);
  car.printCar();
}

void implementShadowing() {
  int x = 5;
  if (true) {
    int x = 10;
    print(x);
  }
  print(x);
}
