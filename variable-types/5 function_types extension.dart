void main() {
  implementMultiply();
  implementStringExtension();
}

extension StringExtension on String {
  String get reversed => split('').reversed.join();
}

void implementStringExtension() {
  String word = "Hello";
  print(word.reversed);
}

void implementMultiply() {
  Function multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(5, 2));
}
