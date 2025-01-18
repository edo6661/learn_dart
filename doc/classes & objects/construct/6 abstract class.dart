abstract class Doer {
  // Mendeklarasikan metode abstrak tanpa implementasi
  void doSomething();
}

class EffectiveDoer extends Doer {
  // Memberikan implementasi metode abstrak
  @override
  void doSomething() {
    print('Doing something...');
  }
}

void main() {
  var doer = EffectiveDoer();
  doer.doSomething(); // Output: Doing something...
}
