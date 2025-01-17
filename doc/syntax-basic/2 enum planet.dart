enum WorkType { dev, qa, pm }

enum Person {
  arbi(workType: null, name: "Arbi", age: 12),
  edo(workType: WorkType.pm, name: "Edo", age: 18);

  const Person({required this.workType, required this.name, required this.age});

  final WorkType? workType;
  final String name;
  final int age;
  bool get isAdult => age >= 18;
}

void main() {
  var edo = Person.edo;
  var arbi = Person.arbi;
  print(edo.isAdult ? "Edo is adult" : "Edo is not adult");
  print(arbi.isAdult);
}
