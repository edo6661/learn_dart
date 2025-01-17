void main() {
  (T name, R age) userInfo<T, R>(Map<T, R> ibaratJson) {
    // Mengembalikan record dengan nilai yang diambil dari IBARATJSON
    return (ibaratJson['name'] as T, ibaratJson['age'] as R);
  }

  var json = {'name': 'Dash', 'age': 10};

  var info = userInfo(json);
  var name = info.$1;
  var age = info.$2;
  print('Name: $name, Age: $age'); // Output: Name: Dash, Age: 10

  var (name1, age1) = userInfo(json);
  print('age: $age1, name: $name1'); // Output: Name: Dash, Age: 10
}
