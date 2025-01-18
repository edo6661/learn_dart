class Candidate {
  final String name;
  final int yearsExperience;

  Candidate(this.name, this.yearsExperience);
}

void main() {
  var candidates = [
    Candidate('John Doe', 10),
    Candidate('Jane Doe', 5),
  ];
  for (final Candidate(:name, :yearsExperience) in candidates) {
    print('$name has $yearsExperience of experience.');
  }
}
