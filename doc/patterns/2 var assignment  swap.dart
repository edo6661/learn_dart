void main() {
  var (a, b, [c, d]) = ('left', 'right', [1, 2]);
  (b, a) = (a, b); // Swap.
  print('$a $b'); // Prints "right left".
}
