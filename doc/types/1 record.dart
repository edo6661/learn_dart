// Contoh menggunakan Records dalam Dart

// Fungsi untuk membalik nilai dari record posisi
(int, int) swap((int, int) recordParam) {
  // Mengambil nilai dari recordParam dengan destructuring
  var (a, b) =
      recordParam; // `a` adalah recordParam.$1, `b` adalah recordParam.$2
  // Mengembalikan recordParam baru dengan nilai dibalik
  return (b, a);
}

// Fungsi untuk mengembalikan informasi pengguna sebagai record
(String name, int age) userInfo(Map<String, dynamic> json) {
  // Mengembalikan record dengan nilai yang diambil dari JSON
  return (json['name'] as String, json['age'] as int);
}

void main() {
  // ================== Dasar-Dasar Record ==================
  // Membuat record dengan campuran field posisi dan field bernama
  var record = ('first', a: 2, b: true, 'last');
  // Mengakses field posisi menggunakan $<position>
  print(record.$1); // Output: 'first'
  print(record.$2); // Output: 'last'

  // Mengakses field bernama dengan nama yang diberikan
  print(record.a); // Output: 2
  print(record.b); // Output: true

  // Tipe record dengan field bernama
  ({int a, bool b}) namedRecord = (a: 42, b: false);
  print(namedRecord.a); // Output: 42
  print(namedRecord.b); // Output: false

  // ================== Record Equality ==================
  // Record dengan bentuk yang sama dianggap setara
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color); // Output: true

  // Perbedaan dalam nama field membuat record tidak setara
  ({int x, int y, int z}) pointNamed = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) colorNamed = (r: 1, g: 2, b: 3);
  print(pointNamed == colorNamed); // Output: false

  // ================== Multiple Return ==================
  // Destructuring record untuk mengambil nilai dengan pola posisi
  final json = {'name': 'Dash', 'age': 10};
  var (name, age) = userInfo(json);
  print('Name: $name, Age: $age'); // Output: Name: Dash, Age: 10

  // ================== Fungsi swap dengan Record ==================
  var swapped = swap((5, 10)); // Membalik nilai (5, 10) menjadi (10, 5)
  print(swapped); // Output: (10, 5)
}
