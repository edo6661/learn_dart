/*
  ! extends:
  * Tujuan: Digunakan untuk pewarisan (inheritance).
  * Apa yang Dilakukan: Dengan menggunakan extends, sebuah kelas mewarisi sifat dan metode dari kelas induk (superclass).
  * Pewarisan State dan Behavior: Subclass akan mewarisi semua properti dan metode dari kelas induk (kecuali yang bersifat private, ditandai dengan _).
  * Penggunaan:
  * Digunakan untuk menghubungkan kelas ke kelas lain.
  * Subclass dapat menambah atau mengganti (override) metode dari kelas induk.
*/
class Animal {
  void speak() {
    print("Animal speaks");
  }
}

class Dog extends Animal {
  void speak() {
    print("Dog barks");
  }
}

/*
  ! with:
  * Tujuan: Digunakan untuk menggabungkan perilaku dari mixin ke dalam kelas.
  * Apa yang Dilakukan: Dengan menggunakan with, kelas dapat menggunakan fungsionalitas yang ditawarkan oleh mixin (kelas yang dapat digunakan untuk ditambahkan perilakunya tanpa pewarisan).
  * Tidak Ada Pewarisan State: Kelas yang menggunakan with hanya menggunakan perilaku (metode) dari mixin, tetapi tidak mewarisi properti (state) dari mixin.
  * Penggunaan:
  * Digunakan ketika kamu ingin menambahkan fungsionalitas tambahan ke kelas tanpa mengubah struktur pewarisan.
  * Dapat menggunakan banyak mixin sekaligus.
*/

mixin Flyable {
  void fly() {
    print("Flying");
  }
}

class Bird with Flyable {
  void sing() {
    print("Singing");
  }
}

/*
  ! implements:
  * Tujuan: Digunakan untuk mengimplementasikan interface atau kelas abstrak.
  * Apa yang Dilakukan: Dengan menggunakan implements, kelas menyatakan bahwa ia harus mengimplementasikan semua metode yang didefinisikan oleh kelas yang diimplementasikan, tetapi tidak mewarisi perilaku dari kelas tersebut.
  * Tidak Ada Pewarisan Sifat: Kelas yang di-implements hanya mendefinisikan antarmuka (interface), jadi kelas yang mengimplementasikannya harus menyediakan implementasi untuk semua metode yang ada.
  * Penggunaan:
  * Digunakan ketika kamu ingin menjamin bahwa kelas memiliki implementasi dari metode yang didefinisikan dalam antarmuka (interface).
  * Kelas dapat mengimplementasikan lebih dari satu interface.
*/

abstract class Animel {
  void speak(); // Tidak ada implementasi, hanya deklarasi.
}

class Dick implements Animel {
  @override
  void speak() {
    print("Dick barks");
  }
}

void main() {
  Dick dick = Dick();
  dick.speak(); // Output: Dog barks
}
