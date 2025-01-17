void main() {
  int myInt = 10;
  double myDouble = 10.0;
  String myString = "Hello, World!";
  bool myBool = true;
  print([myInt, myDouble, myString, myBool]);

  // ! superclass (num): tipe data generic yang mencangkup semua tipe data angka (int dan double)
  num myNum = 10;
  myNum = 10.0;
  print(myNum);

  // ! var: tipe data yang bisa diisi dengan tipe data apapun
  var myVar = 10;
  print(myVar);

  // ! Error karena tipe data tidak sesuai
  // myInt = 10.1;
  // ! Error karena myVar sudah dideklarasikan sebagai int dan tidak bisa diubah
  // myVar = 10.0;
}
