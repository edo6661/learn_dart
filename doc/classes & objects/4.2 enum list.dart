enum Color { red, green, blue }

void main() {
  List<Color> colors = Color.values;
  for (var color in colors) {
    print(color.name);
  }
}
