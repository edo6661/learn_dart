// ! Tujuan: on digunakan untuk mendefinisikan superclass yang harus dimiliki oleh kelas yang menggunakan mixin. Hal ini memastikan bahwa anggota yang diperlukan oleh mixin tersedia pada kelas yang menggunakannya.

class Musician {
  void musicianMethod() {
    print('Playing music!');
  }
}

mixin MusicalPerformer on Musician {
  void performerMethod() {
    print('Performing music!');
    super.musicianMethod();
  }
}

class SingerDancer extends Musician with MusicalPerformer {}

void main() {
  var singerDancer = SingerDancer();
  singerDancer.performerMethod(); // Output: Performing music! Playing music!
}
