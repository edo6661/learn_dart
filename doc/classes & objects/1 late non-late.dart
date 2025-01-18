double initialX = 1.5;

class Point {
  // OK, can access declarations that do not depend on `this`:
  double? x = initialX;

  // ERROR, can't access `this` in non-`late` initializer:
  // double? y = this.x;

  // OK
  late double y = this.x as double;

  // OK, can access `this` in `late` initializer:
  late double? z = this.x;

  // OK, `this.x` and `this.y` are parameter declarations, not expressions:
  Point(this.x, this.y);
}

void main() {
  var point = Point(2.0, 3.0);
  print(point.x); // 2.0
  print(point.y); // 3.0
  print(point.z); // 2.0
}
