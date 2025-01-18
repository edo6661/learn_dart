class Point {
  // Instance variables to hold the coordinates of the point.
  final double x;
  double? y;

  // Generative constructor with initializing formal parameters:
  Point({required this.x, this.y});
  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  var point = Point(
    x: 1.0,
  );
  var point2 = Point(
    x: 1.0,
    y: 2.0,
  );

  print(point.x);
  print(point.y);
  print(point);

  print(point2.x);
  print(point2.y);
  print(point2);
}
