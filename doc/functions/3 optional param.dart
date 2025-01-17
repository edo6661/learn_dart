// Fungsi dengan optional positional parameter
String say(String from, String msg, [String? device]) {
  var result =
      '$from says $msg'; // Menyusun hasil dari parameter 'from' dan 'msg'

  // Jika 'device' tidak null, tambahkan informasi perangkat ke hasil
  if (device != null) {
    result = '$result with a $device';
  }

  // Kembalikan hasilnya
  return result;
}

void main() {
  // Memanggil fungsi dengan 2 parameter, tanpa memberikan nilai untuk 'device'
  print(say('Alice', 'Hello'));
  // Output: Alice says Hello

  // Memanggil fungsi dengan 3 parameter, memberikan nilai untuk 'device'
  print(say('Bob', 'Hi', 'Phone'));
  // Output: Bob says Hi with a Phone
}
