// ! Stream adalah aliran data yang datang secara asinkron, yang bisa diakses secara bertahap, seperti data yang datang dari jaringan atau file.

// Asynchronous generator function
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) {
    await Future.delayed(Duration(
        seconds: 1)); // Simulasi delay (misalnya, data yang datang lambat)
    yield k++; // Menghasilkan nilai k setiap detik
  }
}

void main() async {
  var stream = asynchronousNaturalsTo(5); // Menghasilkan nilai secara asinkron

  await for (var number in stream) {
    print(number); // Menunggu dan mencetak satu nilai per detik
  }
  // Output:
  // 0 (setelah 1 detik)
  // 1 (setelah 1 detik)
  // 2 (setelah 1 detik)
  // 3 (setelah 1 detik)
  // 4 (setelah 1 detik)
}
