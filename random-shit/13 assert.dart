void setAge(int age) {
  // Memastikan bahwa umur tidak negatif.
  assert(age >= 0, 'Age cannot be negative!');
  print('Age is $age');
}

void main() {
  setAge(25); // Output: Age is 25
  setAge(-5); // Error: Uncaught AssertionError: Age cannot be negative!

  var total = 100;
  var discount = 20;

  // Memastikan bahwa diskon tidak lebih besar dari total.
  assert(discount <= total, 'Discount cannot exceed the total!');

  print('Total after discount: ${total - discount}');
}
