class OutOfLlamasException implements Exception {
  final String message;
  OutOfLlamasException(this.message);

  @override
  String toString() => "OutOfLlamasException: $message";
}

void breedMoreLlamas() {
  throw OutOfLlamasException("No more llamas available to breed!");
}

void buyMoreLlamas() {
  print("Buying more llamas...");
}

void cleanLlamaStalls() {
  print("Cleaning llama stalls...");
}

void main() {
  // 1. Contoh penggunaan `try` dengan `on` (tanpa `catch`)
  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    // `on` digunakan jika kita hanya ingin menangkap jenis exception tertentu.
    print("Caught OutOfLlamasException!");
    buyMoreLlamas();
  }

  // 2. Contoh `try` dengan `catch` untuk menangkap detail exception.
  try {
    breedMoreLlamas();
  } catch (e) {
    // `catch` menangkap semua exception tanpa memeriksa tipe.
    print("Caught an exception: $e");
  }

  // 3. Contoh `on` dengan `catch` untuk menangkap tipe exception dan detailnya.
  try {
    breedMoreLlamas();
  } on OutOfLlamasException catch (e) {
    print("Caught OutOfLlamasException: $e");
  } catch (e, s) {
    // Stack trace (`s`) untuk debugging lebih dalam.
    print("Caught another exception: $e");
    print("Stack trace: $s");
  } finally {
    // 4. Contoh penggunaan `finally`.
    cleanLlamaStalls();
  }

  // 5. Contoh `rethrow`: Membiarkan exception dipropagasi ke luar.
  try {
    try {
      breedMoreLlamas();
    } catch (e) {
      print("Partially handled in inner try block.");
      rethrow; // Mempropagasi exception ke luar.
    }
  } catch (e) {
    print("Handled in outer try block: $e");
  }
}
