class Foo {
  final String? one;
  final int? two;

  Foo({this.one, this.two});
}

void main() {
  final Foo myFoo = Foo(one: 'one', two: 2);

  var Foo(:one, :two) = myFoo;
  print('1: $one, 2: $two');
}
