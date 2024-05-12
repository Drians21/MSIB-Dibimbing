
# Tugas Python Part 5

## Dalam tugas python part 5 ini terdapat 2 soal yang harus dikerjakan
<div align='justify'>

### TASK 1 BASIC OPP
Buatlah class MarketingDataETL yang memiliki tiga metode:

extract(): akan membaca data dari sebuah file CSV (Misalkan, marketing_data.csv)

transform(): akan melakukan pembersihan dan transformasi sederhana pada data (seperti mengubah format tanggal atau membersihkan nilai yang kosong)

store(): akan menyimpan data yang telah ditransformasi ke dalam struktur data DataFramet.
<hr>

### TASK 2 INHERITANCE & POLYMORPHISM 
Gunakan inheritance untuk membuat class TargetedMarketingETL yang mewarisi dari MarketingDataETL.

Tambahkan metode segment_customers() yang mengelompokkan pelanggan berdasarkan kriteria tertentu (misalnya, pengeluaran total atau kategori produk yang dibeli).

Demonstrasi polymorphism dengan meng-override metode transform() dalam TargetedMarketingETL untuk menambahkan logika segmentasi pelanggan ke dalam proses transformasi.

<hr>

## Hasil Project
### Task 1
Dalam task 1 terdari dari Class yaitu `MarketingDataETL`. Class tersebut terdiri dari 4 Method yaitu:
1. Method 
```python
def __init__(self, file_path)
```
Parameter file path digunakan untuk mengiput file yang akan di gunakan.

2.  Method 
```python
def extact(self)
```
Method ini digunakan untuk membaca data dari sumber dengan bentuk DataFrame.

3. Method 
```python
def transform(self)
```
Method ini digunakan untuk melakukan transformasi atau pembersihan pada data. Proses pembersihan terdiri dari:
- Pengubahan tipe data `purchase_date` dari string menjadi date.
- Menghapus nilai null pada data.

4. Method 
```python 
def store(self, output_file)
```
Metod ini digunakan untuk menyimpan file yang sudah di transfrom. Parameter `output_file`digunakan untuk menentukan path file dan nama file.


### Task 2
Pada task 2 terpada 1 class dengan nama `TargetedMarketingETL(MarketingDataETL)` yang merupakan inherit dari Class pada task 1 `MarketingDataETL`. Pada Class ini terdapat 2 method, yaitu: 
1. Method 
```python
def segment_customer(self, amount_spent)
```
Method tersebut digunakan untuk melakukan logikal untuk segementasi cusotmer yang akan diterapkan pada fungsi dibawah.

2. Method
```python
def transform(self)
```
Method ini merupakan polymorpyhsm untuk methode class sebelumnya `MarketingDataETL` yang mana method ini menambahkan logika dari method `segment_cutomer`.

</div>