// Mendefinisikan class yang menyimpan properti seperti data class di Kotlin
class Flag {
  final bool bold;
  final bool hidden;

  // Konstruktor untuk menginisialisasi properti
  const Flag({required this.bold, required this.hidden});

  // Override metode toString untuk memudahkan representasi objek
  @override
  String toString() => 'Flag(bold: $bold, hidden: $hidden)';
}

void main() {
  // Membuat objek Flag
  var flag = Flag(bold: true, hidden: false);

  // Menggunakan objek Flag
  print(flag); // Output: Flag(bold: true, hidden: false)
}
