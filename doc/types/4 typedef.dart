// ignore_for_file: unnecessary_type_check

typedef IntList = List<int>;
typedef ListMapper<X> = Map<X, List<X>>;
typedef Compare<T extends int> = int Function(T a, T b);

void main() {
  IntList il = [1, 2, 3];
  print(il); // [1, 2, 3]
  ListMapper<String> lm = {
    'a': ['b', 'c']
  };
  print(lm); // {a: [b, c]}
  Compare<int> c = (a, b) => a - b;
  print(c(3, 2)); // 1
  assert(c is Compare<int>);
}
