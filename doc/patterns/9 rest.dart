void main() {
  var [a, b, ...rest, c, d] = [1, 2, 3, 4, 5, 6, 7, 9];
// Prints "1 2 7 9".
  print('$a $b $c $d');
  print('rest: $rest');
}
