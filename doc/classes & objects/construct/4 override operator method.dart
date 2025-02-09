class Vector {
  final int x, y;

  Vector(this.x, this.y);

  // Definisikan operator penjumlahan (+)
  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  // Definisikan operator pengurangan (-)
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hash(x, y);
}

void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  print(v + w == Vector(4, 5)); // Penjumlahan
  print(v - w == Vector(0, 1)); // Pengurangan
  // wrong
  print(v + w == Vector(4, 4));
  print(v - w == Vector(0, 2));
}
