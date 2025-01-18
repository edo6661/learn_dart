// ! Tujuan: Dart memungkinkan kita untuk mendefinisikan mixin class, yang dapat digunakan baik sebagai kelas biasa maupun sebagai mixin. Meskipun demikian, mixin class tetap tidak dapat menggunakan extends atau with dan tidak bisa memiliki constructor generatif.

mixin class Musician {
  void playInstrument() {
    print("Playing instrument");
  }
}

class Novice with Musician {
  // Menggunakan Musician sebagai mixin
}

class NoviceExtended extends Musician {
  // Menggunakan Musician sebagai kelas
}

void main() {
  var novice = Novice();
  novice.playInstrument(); // Output: Playing instrument
}
