// ignore_for_file: equal_elements_in_set

void main() {
  collectionTypes();
  typDefTypes();
  defaultValue();
}

void defaultValue() {
  int? myInt; // Nullable, default value adalah null
  print(myInt); // Output: null

  myInt ??= 42; // Tetapkan nilai default jika null
  print(myInt); // Output: 42
}

typedef StringCallback = String Function(String);
void typDefTypes() {
  StringCallback myCallback = (name) => "Hello, $name!";
  print(myCallback("Dart"));
}

void collectionTypes() {
  // List: urutan data yang bisa diakses dengan indeks
  List<int> myList = [1, 2, 3, 4, 5];
  print(myList);

  // Set: himpunan unik, tidak ada duplikasi
  Set<String> mySet = {"apple", "banana", "apple"};
  print(mySet); // Output: {apple, banana}

  // Map: pasangan key-value
  Map<String, int> myMap = {"age": 25, "score": 100};
  print(myMap);
}
