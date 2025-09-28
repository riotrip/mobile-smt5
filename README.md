# Pemrograman Mobile

**Nama** : Rio Tri Prayogo

**NIM** : 2341720236

## 03 | Pengantar Bahasa Pemrograman Dart - Bagian 3

### Praktikum

**Praktikum 1: Eksperimen Tipe Data List**<br>
Langkah 1:
Ketik atau salin kode program berikut ke dalam void main().

```
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);
```

Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

> Kode tersebut merupakan penggunaan list dalam dart yang mana pada awalnya list diinisiasi. Lalu assert memverifikasi bahwa panjang list adalah 3 dan elemen pada indeks ke-1 adalah 2, yang kemudian dicetak (3, 2). Selanjutnya, nilai pada indeks ke-1 diubah dari 2 menjadi 1. Perubahan ini divalidasi oleh assert sebelum nilai barunya dicetak (1). Sehingga akan muncul output: <br>![Screenshot prak1_01](img/prak1_01.png)<br>

Langkah 3:
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

> ```
>  final List<String?> list = List.filled(5, null);
>
>  list[1] = "Rio Tri Prayogo";
>  list[2] = "2341720236";
>
>  print(list);
>  print("Index 1: ${list[1]}");
>  print("Index 2: ${list[2]}");
> ```
>
> Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
> Kode tersebut melakukan inisiasi dengan variabel final yang berisi 5 index dan memiliki default null, lalu pada index 1 diisi nama dan index 2 diisi NIM dan dicetak sehingga akan memunculkan output: <br>![Screenshot prak1_02](img/prak1_02.png)<br>

**_[Praktikum 1 Code](src/praktikum1.dart)_**

**Praktikum 2: Eksperimen Tipe Data Set**<br>
Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
```

Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

> Kode tersebut merupakan penggunaan Set berisi lima elemen string berupa nama-nama unsur halogen, lalu dicetak menggunakan print() sehingga muncul output:<br>![Screenshot prak2_01](img/prak2_01.png)<br>

Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

> Kode tersebut menunjukkan tiga cara mendeklarasikan koleksi dalam Dart dengan hasil yang berbeda. Deklarasi pertama var names1 = {} dan kedua Set names2 = {} sama-sama membuat Set string kosong, yang merupakan kumpulan elemen unik tanpa urutan tertentu. Sedangkan deklarasi ketiga var names3 = {} justru membuat Map kosong, karena tanpa annotasi tipe eksplisit, Dart menganggap kurung kurawal sebagai pembentuk Map. Ketika dicetak, names1 dan names2 akan menampilkan set kosong {}, sementara names3 akan menampilkan map kosong {} yang secara internal merupakan struktur data berbeda meski tampilan outputnya sama yaitu:<br>![Screenshot prak2_02](img/prak2_02.png)<br>
> Untuk penambahan elemen NIM dan nama dengan fungsi .add() dan .addAll() dengan kode
> ```
>  names1.add('Rio Tri Prayogo'); 
>  names1.add('2341720236');
>
>  names2.addAll([
>    'Rio Tri Prayogo',
>    '2341720236',
>  ]);
>
>  print(names1);
>  print(names2);
> ```
> Dengan output:<br>![Screenshot prak2_03](img/prak2_03.png)<br>
> Untuk Map bisa menggunakan kode:
> ```
>  names3['nama'] = 'Rio Tri Prayogo';
>  names3['nim'] = '2341720236';
>
>  print(names3);
> ```
> Dengan output:<br>![Screenshot prak2_05](img/prak2_05.png)<br>

**_[Praktikum 2 Code](src/praktikum2.dart)_**

**Praktikum 3: Eksperimen Tipe Data Maps**<br>
Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
```

Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

> Kode tersebut mendemonstrasikan pembuatan Map dalam Dart dengan tipe data yang dinamis. Variabel gifts merupakan Map yang menggunakan key string dengan value campuran string dan integer, sedangkan nobleGases menggunakan key integer dengan value yang juga campuran string dan integer. Ketika dicetak, kedua Map tersebut akan menampilkan seluruh pasangan key-value yang dimilikinya yaitu:<br>![Screenshot prak3_01](img/prak3_01.png)<br>

Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

> Kode diatas menunjukkan dua cara inisialisasi Map dalam Dart. Pertama, mhs1 diinisialisasi sebagai Map<String, String>() dan diisi dengan tiga pasangan key-value string. Kedua, mhs2 diinisialisasi sebagai Map<int, String>() dan diisi dengan pasangan key integer dan value string yang akhirnya menunjukkan output:<br>![Screenshot prak3_02](img/prak3_02.png)<br>

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

> Menambahkan elemen nama dan NIM Anda pada tiap variabel dengan kode dalam: **_[Praktikum 3 Code](src/praktikum3.dart)_** dengan output:<br>![Screenshot prak3_03](img/prak3_03.png)<br>

**_[Praktikum 3 Code](src/praktikum3.dart)_**

**Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators**<br>
Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```
var list = [1, 2, 3];
var list2 = [0, ...list];
print(list1);
print(list2);
print(list2.length);
```

Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

> Kode tersebut menunjukkan penggunaan spread operator (...) dalam Dart untuk menggabungkan list. Variabel list berisi [1, 2, 3] dan list2 dibuat dengan menggabungkan elemen 0 dengan semua elemen dari list menggunakan spread operator, sehingga menghasilkan [0, 1, 2, 3]. Namun terdapat kesalahan karena kode mencoba mencetak list1 yang tidak dideklarasikan, seharusnya list dengan output error:<br>![Screenshot prak4_01](img/prak4_01.png)<br>. Untuk memperbaikinya dengan mengubah list1 menjadi list sehingga memunculkan output:<br>![Screenshot prak4_02](img/prak4_02.png)<br>

Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
list1 = [1, 2, null];
print(list1);
var list3 = [0, ...?list1];
print(list3.length);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

> Kode tersebut mendemonstrasikan penggunaan null-aware spread operator (...?) dalam Dart. Variabel list1 diinisialisasi dengan elemen [1, 2, null] yang mengandung nilai null. Kemudian list3 dibuat dengan menggabungkan elemen 0 dan elemen-elemen dari list1 menggunakan operator ...? yang aman terhadap null - jika list1 bernilai null, operator ini tidak akan menyebabkan error tetapi hanya akan diabaikan. Output yang dihasilkan adalah list3 akan berisi [0, 1, 2, null] dengan panjang 4, karena operator ...? tetap memasukkan elemen null dari list1. Kode tersebut akan menghasilkan error karena variabel list1 tidak dideklarasikan dengan kata kunci var, final, atau const sebelum penggunaannya dengan output error:<br>![Screenshot prak4_03](img/prak4_03.png)<br>Dengan penambahan var pada list1 maka akan muncul output:<br>![Screenshot prak4_04](img/prak4_04.png)<br>

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!
> Menambahkan variabel list berisi nama NIM menggunakan Spread Operators dengan kode:
> ```
>  var bio = ['Rio Tri Prayogo', 2341720236];
>  print(bio);
>  var list4 = [...bio];
>  print(list4);
> ```
> Sehingga memunculkan output:<br>![Screenshot prak4_05](img/prak4_05.png)<br>

Langkah 4:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

> Kode tersebut mendemonstrasikan penggunaan collection if dalam Dart untuk menambahkan elemen ke dalam list secara kondisional. Variabel nav diinisialisasi dengan tiga elemen string tetap: 'Home', 'Furniture', dan 'Plants'. Elemen keempat 'Outlet' hanya akan ditambahkan ke dalam list jika variabel promoActive bernilai true. Namun, kode ini akan menghasilkan error karena variabel promoActive tidak dideklarasikan sebelumnya dengan output:<br>![Screenshot prak4_06](img/prak4_06.png)<br>Untuk memperbaikinya bisa menambahkan '=true'/'=false' var promoActive sehingga muncul output<br>Jika true:<br>![Screenshot prak4_07](img/prak4_07.png)<br>Jika false:<br>![Screenshot prak4_08](img/prak4_08.png)<br>

Langkah 5:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

> Kode tersebut mendemonstrasikan penggunaan collection if dengan pattern matching dalam Dart. Variabel nav2 diinisialisasi dengan tiga elemen string tetap: 'Home', 'Furniture', dan 'Plants'. Elemen keempat 'Inventory' hanya akan ditambahkan ke dalam list jika variabel login sama dengan string 'Manager' menggunakan pattern matching dengan kata kunci case. Namun, kode ini akan menghasilkan error karena variabel login tidak dideklarasikan sebelumnya dengan output:<br>![Screenshot prak4_09](img/prak4_09.png)<br>Untuk memperbaikinya bisa inisiasi variabel login berupa<br>Jika Manager:<br>![Screenshot prak4_10](img/prak4_10.png)<br>Jika bukan Manager<br>![Screenshot prak4_11](img/prak4_11.png)<br>

Langkah 6:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.

> Kode tersebut mendemonstrasikan penggunaan collection for dalam Dart untuk membuat list baru berdasarkan list existing. Variabel listOfInts berisi [1, 2, 3] dan listOfStrings dibuat dengan elemen pertama '#0' diikuti oleh elemen-elemen yang di-generate dari loop for (var i in listOfInts) '#$i' yang menghasilkan string '#1', '#2', '#3'. Pernyataan assert memverifikasi bahwa elemen indeks 1 memang '#1'. Output yang dihasilkan:<br>![Screenshot prak4_12](img/prak4_12.png)<br>

**_[Praktikum 4 Code](src/praktikum4.dart)_**

**Praktikum 5: Eksperimen Tipe Data Records**<br>

**Tugas Praktikum**<br>
