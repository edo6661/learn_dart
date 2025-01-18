// Generative Constructor
// -----------------------
// Digunakan untuk membuat objek baru dari kelas, dan sering digunakan untuk menginisialisasi variabel instan.
// ignore_for_file: unused_local_variable

class Point {
  double x, y;

  // Generative constructor
  Point(this.x, this.y); // Menggunakan parameter untuk inisialisasi.

  @override
  String toString() => 'Point($x, $y)';
}

void mainGenerative() {
  var p1 = Point(3, 4); // Membuat instance menggunakan generative constructor.
  print(p1); // Output: Point(3, 4)
}

// Default Constructor
// --------------------
// Jika tidak ada konstruktor yang didefinisikan, Dart menyediakan konstruktor default secara otomatis.
class DefaultPoint {
  double x = 0, y = 0; // Nilai default.

  // Konstruktor ini tidak perlu dideklarasikan; dibuat secara implisit oleh Dart.
}

void mainDefault() {
  var p2 = DefaultPoint(); // Menggunakan default constructor.
  print('DefaultPoint(${p2.x}, ${p2.y})'); // Output: DefaultPoint(0, 0)
}

// Named Constructor
// ------------------
// Memberikan nama khusus pada konstruktor untuk meningkatkan kejelasan atau mendukung beberapa konstruktor dalam kelas yang sama.
class NamedPoint {
  final double x, y;

  // Konstruktor utama
  NamedPoint(this.x, this.y);

  // Named constructor
  NamedPoint.origin()
      : x = 0,
        y = 0; // Menetapkan nilai default.

  @override
  String toString() => 'NamedPoint($x, $y)';
}

void mainNamed() {
  var p3 = NamedPoint.origin(); // Menggunakan named constructor.
  print(p3); // Output: NamedPoint(0, 0)
}

// Constant Constructor
// ---------------------
// Membuat objek yang bersifat immutable (tidak dapat diubah) dan bisa digunakan sebagai konstanta pada waktu kompilasi.
class ImmutablePoint {
  final double x, y;

  // Constant constructor
  const ImmutablePoint(this.x, this.y);

  static const origin = ImmutablePoint(0, 0); // Contoh objek konstanta.
}

void mainConstant() {
  var p4 = ImmutablePoint.origin; // Menggunakan objek konstanta.
  print(p4); // Output: ImmutablePoint(0, 0)
}

// Redirecting Constructor
// ------------------------
// Mengalihkan pemanggilan ke konstruktor lain dalam kelas yang sama untuk menghindari duplikasi kode.
class RedirectPoint {
  double x, y;

  RedirectPoint(this.x, this.y);

  // Redirecting constructor
  RedirectPoint.alongXAxis(double x)
      : this(x, 0); // x diberi nilai, y default 0.

  @override
  String toString() => 'RedirectPoint($x, $y)';
}

void mainRedirecting() {
  var p5 = RedirectPoint.alongXAxis(5); // Menggunakan redirecting constructor.
  print(p5); // Output: RedirectPoint(5, 0)
}

// Factory Constructor
// --------------------
// Memberikan kontrol lebih besar atas pembuatan instance, seperti mengembalikan instance dari cache atau subtype.
// !  Sebuah factory constructor dapat mengembalikan instance yang sudah ada (misalnya, dari cache).
// ! Atau membuat instance dari subclass alih-alih kelas itu sendiri.
// ! Factory constructor tidak menginisialisasi properti instance langsung menggunakan this.

class Logger {
  final String name;
  static final Map<String, Logger> _cache = <String, Logger>{};

  // Factory constructor untuk caching instance.
  factory Logger(String name) {
    // ! putIfAbsent untuk mengecek apakah instance dengan nama yang sama sudah ada di cache. Jika ada, kembalikan instance yang lama. Jika tidak, buat yang baru menggunakan _internal.
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name); // Konstruktor internal untuk factory.
}

void mainFactory() {
  var logger1 = Logger('UI');
  var logger2 = Logger('UI'); // Mengembalikan instance yang sama dari cache.
  print(identical(logger1, logger2)); // Output: true
}

/*
  Konstruktor ini mengarahkan panggilan konstruktor ke konstruktor lain dalam kelas yang sama atau kelas lain.

  Tujuan: Menghindari pengulangan parameter dan nilai default serta menyediakan fleksibilitas untuk memanggil konstruktor lain dalam kelas yang sama atau berbeda.
*/
class Listenable {
  // Constructor redirecting mengarah ke kelas lain
  factory Listenable.merge(List<Listenable> listenables) = _MergingListenable;
}

class _MergingListenable implements Listenable {
  _MergingListenable(List<Listenable> listenables);
}

void mainRedirectingFactory() {
  var listenable = Listenable.merge([]); // Menggunakan factory constructor.
}
/*
  Constructor Inheritance
  Subkelas tidak mewarisi konstruktor dari kelas induknya. Jika kelas induk tidak memiliki konstruktor default, subkelas harus memanggil konstruktor induk secara eksplisit.

  Tujuan: Menyediakan cara untuk subkelas memanggil konstruktor induk untuk inisialisasi.
*/

class Person {
  String name;
  int? age;
  Person(this.name, [this.age]);
}

class Employee extends Person {
  // super = memanggil konstruktor kelas induk
  Employee(String name, [int? age]) : super(name, age);
  @override
  String toString() => 'Employee(name: $name, age: $age)';
}

void mainConstructorInherit() {
  var employee = Employee('Alice');
  var employee2 = Employee('Bob', 30);
  print(employee);
  print(employee2);
}

/* 
  Super Parameters
  Untuk menghindari pengulangan parameter yang sama pada konstruktor induk, Dart menyediakan super untuk meneruskan parameter ke konstruktor induk.

  Tujuan: Mengurangi pengulangan parameter pada konstruktor induk dan mempermudah pewarisan parameter.
*/
class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);
}

class Vector3d extends Vector2d {
  final double z;

  // Meneruskan x dan y ke konstruktor induk
  Vector3d(super.x, super.y, this.z);
  @override
  String toString() => 'Vector3d($x, $y, $z)';
}

void mainSuperParameters() {
  var vector = Vector3d(1.0, 2.0, 3.0);
  print(vector);
}

// Main untuk menjalankan semua contoh
void main() {
  // mainGenerative();
  // mainDefault();
  // mainNamed();
  // mainConstant();
  // mainRedirecting();
  // mainFactory();
  // mainRedirectingFactory();
  // mainConstructorInherit();
  mainSuperParameters();
}
