void main() {
  dynamicVar();
  finalVar();
  constVar();
  lateVar();
  nullSafetyVar();
}

void dynamicVar() {
  // ! dynamic itu bisa diisi dengan tipe data apapun
  dynamic myDynamic = 10; // Mulai sebagai int
  print(myDynamic);

  myDynamic = 10.5; // Ubah menjadi double
  print(myDynamic);

  myDynamic = "Now I'm a string!"; // Ubah menjadi string
  print(myDynamic);
}

void finalVar() {
  // ! mendeklarasikan variabel yang hanya dapat diinisialisasi sekali
  final myFinal = 1; // Harus langsung diinisialisasi
  print(myFinal);
  // ! Error karena myFinal sudah diinisialisasi
  // myFinal = 2;
}

void constVar() {
  const myConst = 3.14;
  print(myConst);

  // ! Error: const tidak bisa diubah
  // myConst = 2.71;
}

void lateVar() {
  // ! late: mendeklarasikan variabel yang diinisialisasi nanti (saat runtime)
  late String myLateVar;
  myLateVar = "Hello, World!";

  print(myLateVar);
}

void nullSafetyVar() {
  int? nullableInt; // Bisa null
  print(nullableInt); // Output: null

  nullableInt = 5; // Bisa diisi nilai
  print(nullableInt);
}
