const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  final double x;
  final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  Point(this.x, this.y);

  // Named constructor
  Point.origin()
      : x = xOrigin,
        y = yOrigin;
}

void main() {
  var p = Point(2, 3);
  print('x: ${p.x}, y: ${p.y}');

  var p2 = Point.origin();
  print('x: ${p2.x}, y: ${p2.y}');
}
