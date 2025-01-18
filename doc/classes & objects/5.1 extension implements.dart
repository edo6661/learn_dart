extension type MyInt(int value) implements int {
  int get doubleValue => value * 2;
}

void main() {
  var myInt = MyInt(5);
  print(myInt.doubleValue); // Output: 10
  // int method is still available
  print(myInt.toDouble());
}
