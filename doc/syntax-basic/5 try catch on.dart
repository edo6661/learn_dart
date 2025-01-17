// ignore_for_file: deprecated_member_use

void throwDivideByZero(int a, int b) {
  try {
    print('Result: ${a ~/ b}');
  } on IntegerDivisionByZeroException catch (e) {
    print('Caught an exception: $e');
  }
}

void main() async {
  throwDivideByZero(10, 0);
  throwDivideByZero(10, 2);
}
