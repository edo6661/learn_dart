void main() {
  implementSpread();
  nullAwareImplementation();
  Bird().fly();
  Bird().makeNoise();
}

void implementSpread() {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [4, ...list1, 5, 6];
  print(list2);
}

void nullAwareImplementation() {
  String? name;
  print(name ?? "no name");
  // ! pakai? karena name bisa null dan ini nge dodge error jika name null
  name?.toUpperCase();
}

mixin Flyable {
  void fly() => print("Flying");
}

mixin MakeNoise {
  void makeNoise() => print("Noise");
}

class Bird with Flyable, MakeNoise {}

void implementMixin() {
  Bird().fly();
  Bird().makeNoise();
}
