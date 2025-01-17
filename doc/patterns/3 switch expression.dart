enum Color { red, yellow, blue, green }

void main() {
  var color = Color.red;

  var isPrimary = switch (color) {
    Color.red || Color.yellow || Color.blue => true,
    // ! Wildcard/Default Case: _ digunakan untuk menangani semua nilai yang tidak disebutkan secara eksplisit dalam kondisi sebelumnya, kek else di if-else.
    _ => false
  };
  print(isPrimary); // true
}
