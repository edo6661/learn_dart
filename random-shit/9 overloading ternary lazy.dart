void main() {
  implementOverloading();
  ternaryImplementation();
  implementLazyLoad();
}

class Point {
  final int x, y;

  Point(this.x, this.y);

  // nge override operator +, jadi Point bisa + Point
  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }
}

void implementOverloading() {
  var p1 = Point(1, 2);
  var p2 = Point(3, 4);

  var result = p1 + p2;
  print("Result: (${result.x}, ${result.y})"); // Output: Result: (4, 6)
}

void ternaryImplementation() {
  int age = 20;
  print(age >= 18 ? "Adult" : "Minor"); // Output: Adult
}

class LazyLoad {
  late final String heavyComputation;

  LazyLoad() {
    heavyComputation = "This is a heavy computation";
  }
}

void implementLazyLoad() {
  var lazy = LazyLoad();
  print(lazy
      .heavyComputation); // dihitung kalo dipanggil, bukan diinisialisasi awal program
}
