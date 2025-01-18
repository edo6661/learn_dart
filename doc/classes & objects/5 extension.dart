extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main() {
  print('42'.parseInt()); // Output: 42
}
