// ignore_for_file: unused_local_variable, unnecessary_cast, unnecessary_type_check

void kontol() {
  var foo = const []; // List kosong, tidak bisa diubah
  final bar = const []; // List kosong, tidak bisa diubah
  const baz = []; // Sama dengan `const []`

// Mengubah koleksi yang bertipe const
  foo = [1, 2, 3]; // Boleh, karena `foo` bukan const lagi
  // baz = [42]; // Error: variabel const tidak bisa diubah
}

void main() {
  const i = 42;
  const list = [i as int]; // Menggunakan casting tipe
  const map = {if (i is int) i: 'int'}; // Menggunakan `is` untuk memeriksa tipe
  const set = {if (list is List<int>) ...list}; // Menggunakan spread operator
  print(list); // [42]
  print(map); // {42: int}
  print(set); // {42}
}
