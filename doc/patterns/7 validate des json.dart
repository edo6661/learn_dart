void main() {
  const Map<String, List<Object>> json = {
    'user': ['Lily', 13]
  };
  var {'user': [name, age]} = json;
  print('Name: $name, Age: $age'); // Output: Name: Lily, Age: 13
  if (json case {'user': [String name, int age]}) {
    print('User $name is $age years old.');
  }
}
