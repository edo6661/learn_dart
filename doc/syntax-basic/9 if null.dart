// Slightly longer version uses ?: operator.
String playerName(String? name) => name != null ? name : 'Guest';

void main() {
  print(playerName('Arbi'));
  print(playerName(null));
}
