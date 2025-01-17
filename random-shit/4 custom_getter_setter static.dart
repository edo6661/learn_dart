void main() {
  customGetterSetter();
  staticVar();
}

class Person {
  String _name = "";
  String get name => _name;

  set name(String val) => _name = val.toUpperCase();
}

void customGetterSetter() {
  var person = Person();
  person.name = "dart";
  print(person.name);
}

class Counter {
  static int count = 0;
  int notStaticCount = 0;

  void increment() {
    count++;
  }

  void notStaticIncrement() {
    notStaticCount++;
  }
}

void staticVar() {
  Counter c1 = Counter();
  Counter c2 = Counter();

  c1.increment();
  c2.increment();

  c1.notStaticIncrement();
  c2.notStaticIncrement();

  print(Counter.count);
  print(Counter().notStaticCount);
}
