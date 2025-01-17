void main() {
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var userRole = 'Manager'; // Peran pengguna
// Menggunakan if-case untuk menambahkan 'Inventory' hanya jika userRole adalah 'Manager'
  var nav1 = ['Home', 'Furniture', 'Plants', if (userRole == 'PM') 'Inventory'];
  print(nav1); // Output: [Home, Furniture, Plants]

  var listOfInts = [1, 2, 3];
// Menggunakan collection for untuk mengubah setiap elemen dalam listOfInts menjadi string dengan format '#x'
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings); // Output: ['#0', '#1', '#2', '#3']
}
