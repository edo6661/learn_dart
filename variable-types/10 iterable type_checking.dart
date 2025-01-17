void main() {
  iterableImplementation();
  typeCheckingImplementation();
}

void iterableImplementation() {
  Iterable<int> numbers = [1, 2, 3, 4, 5];
  var sum = numbers.reduce((a, b) => a + b);
  print(sum); // Output: 15
}

void typeCheckingImplementation() {
  var myVar = "asd";
  if (myVar is int) {
    print("It's an integer");
  } else if (myVar is String) {
    print("It's a string");
  } else {
    print("It's neither an integer nor a string");
  }
}
