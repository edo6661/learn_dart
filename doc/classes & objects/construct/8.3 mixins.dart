// ! Tujuan: Mixin dapat digunakan untuk mengimplementasikan antarmuka (interface), memastikan bahwa semua kelas yang menggunakan mixin tersebut mendefinisikan anggota yang diperlukan.
abstract class Tuner {
  void tuneInstrument();
}

mixin Guitarist implements Tuner {
  void playSong() {
    tuneInstrument();
    print('Strums guitar.');
  }
}

class PunkRocker with Guitarist {
  @override
  void tuneInstrument() {
    print("Don't bother, being out of tune is punk rock.");
  }
}

void main() {
  var punk = PunkRocker();
  punk.playSong(); // Output: Don't bother, being out of tune is punk rock. Strums guitar.
}
