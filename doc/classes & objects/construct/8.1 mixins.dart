// ! Terkadang mixin memerlukan akses ke metode atau properti yang ada pada kelas yang menggunakannya, namun tidak bisa mendefinisikan anggota tersebut sendiri. Untuk itu, kita bisa mendeklarasikan metode abstrak dalam mixin agar kelas yang menggunakan mixin tersebut harus mendefinisikan metode tersebut.

mixin Musician {
  void playInstrument(String instrumentName); // Metode abstrak

  void playPiano() {
    playInstrument('Piano');
  }
}

class Virtuoso with Musician {
  @override
  void playInstrument(String instrumentName) {
    print('Playing the $instrumentName beautifully');
  }
}

void main() {
  var virtuoso = Virtuoso();
  virtuoso.playPiano(); // Output: Playing the Piano beautifully
}
