class Queue {
  // ! Static variables aren't initialized until they're used.

  static const initialCapacity = 16;
}

void main() {
  print(Queue.initialCapacity == 16);
}
