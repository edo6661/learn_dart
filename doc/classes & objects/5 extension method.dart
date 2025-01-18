// Define an extension on 'int'
extension IntExtensions on int {
  // Add a method to check if the integer is even
  bool get isEvenRetarded => this % 2 == 0;
}

void main() {
  int num = 4;

  print(num.isEvenRetarded); // Output: true
}
