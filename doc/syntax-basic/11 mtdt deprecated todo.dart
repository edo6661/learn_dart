// ignore_for_file: unused_local_variable, deprecated_member_use_from_same_package

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
  @Todo('Dash', 'Implement this function')
  void doSomething() {
    print('Do something');
  }
}

@Todo("WOY", "Implement this function")
class Television {
  /// Use [turnOn] to turn the power on instead.
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {
    // ···
  }
}

void main() {
  var tv = Television();
  tv.activate();
  var todo = Todo;
}
