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

**Praktikum 3: Eksperimen Tipe Data Maps**<br>

**Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators**<br>

**Praktikum 5: Eksperimen Tipe Data Records**<br>

**Tugas Praktikum**<br>
