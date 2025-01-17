void main() {
  implementCustomTypeClasses();
}

class Rectangle {
  final int width;
  final int height;

  Rectangle(this.width, this.height);

  int get area => width * height;
}

void implementCustomTypeClasses() {
  var rect = Rectangle(3, 4);
  print(rect.area); // Output: 12
}
