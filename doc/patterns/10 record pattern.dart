// ignore_for_file: dead_code, pattern_never_matches_value_type

void main() {
  recordPatternDesImpl();
}

void recordDes() {
  // Mendeklarasikan sebuah record yang memiliki dua elemen
  var record = (myString: 'Hello', myNumber: 42);

  // Menggunakan Record Pattern untuk memecah record menjadi variabel
  var (myString: foo, myNumber: bar) = record;

  // Mencetak nilai yang dipisah-pisah
  print(foo); // 'Hello'
  print(bar); // 42
}

void recordPatternDesImpl() {
  // Mendeklarasikan sebuah record
  var record = (myString: 'Goodbye', myNumber: 100);

  // Menggunakan switch dengan record pattern untuk memecah record
  switch (record) {
    case (myString: var foo, myNumber: var bar):
      print('String: $foo, Number: $bar');
      break;
    default:
      print('No match');
  }
  switch (record) {
    case (asdasd: var foo, myNumber: var bar):
      print('String: $foo, Number: $bar');
      break;
    default:
      print('No match');
  }
}
