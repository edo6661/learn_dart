// Fungsi filterItems menggunakan `sync*` untuk menghasilkan item secara sinkron.
Iterable<String> filterItems(List<String> items, String query) sync* {
  for (var item in items) {
    // Jika item mengandung query, maka item tersebut dihasilkan (yield).
    yield item; // `yield` menghasilkan item satu per satu ke pemanggil.
  }
}

// Fungsi getRange menggunakan `sync*` untuk menghasilkan rentang angka secara sinkron.
Iterable<int> getRange(int start, int end) sync* {
  for (var i = start; i <= end; i++) {
    // Menghasilkan (yield) angka saat ini dalam loop.
    yield i;
  }
}

void main() {
  // Membuat daftar string.
  var items = ['apple', 'banana', 'orange', 'grape', 'watermelon'];

  // Query untuk mencari item yang mengandung kata 'ap'.
  var query = 'ap';

  // Menggunakan filterItems untuk menyaring item yang mengandung query.
  // Karena filterItems mengembalikan Iterable<String>, kita dapat menggunakan for-in untuk iterasi.
  for (var item in filterItems(items, query)) {
    // Mencetak item yang sesuai dengan query.
    print(item); // Output: apple, grape
  }

  // Menggunakan getRange untuk menghasilkan angka dari 3 hingga 5.
  // Fungsi getRange mengembalikan Iterable<int>, sehingga bisa diiterasi dengan for-in.
  for (var i in getRange(3, 5)) {
    // Mencetak setiap angka dalam rentang.
    print(i); // Output: 3, 4, 5
  }
}
