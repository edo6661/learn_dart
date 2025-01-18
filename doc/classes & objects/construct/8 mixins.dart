// ! Mixins memungkinkan kita untuk mendefinisikan kode yang dapat digunakan ulang dalam berbagai hirarki kelas tanpa harus menggunakan pewarisan (inheritance). Mixin biasanya digunakan untuk menambahkan perilaku ke dalam kelas tanpa mengubah struktur kelas

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else {
      print('Humming to self');
    }
  }
}

class Musician with Musical {}

void main() {
  var musician = Musician();
  musician.canPlayPiano = true;
  musician.entertainMe(); // Output: Playing piano
}
