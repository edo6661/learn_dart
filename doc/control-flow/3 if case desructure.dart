// ignore_for_file: dead_code

class Point {
  int x, y;
  Point(this.x, this.y);
  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  var pair = Point(2, 3);

  // Menentukan nama properti secara eksplisit di pola
  if (pair case Point(x: var x, y: var y)) {
    print('Coordinates are $x, $y');
  } else {
    throw FormatException('Invalid coordinates.');
  }

  // bakal masuk ke else karena pair itu bukan list
  if (pair case [var x, var y]) {
    print('Coordinates are $x, $y');
  } else {
    throw FormatException('Invalid coordinates.');
  }
}
