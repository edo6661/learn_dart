void main() {
  var numList = [1, 2, 3];
  var [a, b, c] = numList;
  print(a + b + c); // 6

  var (d, [e, g]) = ('str', [1, 2]);

  print(d); // str
  print(e); // 1
}
