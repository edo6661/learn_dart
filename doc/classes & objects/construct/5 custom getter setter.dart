class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Getter untuk properti 'right'
  double get right => left + width;

  // Setter untuk properti 'right'
  set right(double value) => left = value - width;

  // Getter untuk properti 'bottom'
  double get bottom => top + height;

  // Setter untuk properti 'bottom'
  set bottom(double value) => top = value - height;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left); // Output: 3
  rect.right = 12;
  print(rect.left); // Output: -8
}
