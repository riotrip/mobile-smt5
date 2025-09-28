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

**Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators**<br>

**Praktikum 5: Eksperimen Tipe Data Records**<br>

**Tugas Praktikum**<br>
