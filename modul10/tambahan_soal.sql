------ Tambahan Soal----------------
1. Buatlah query untuk menampilkan jumlah transaksi terbesar !
2. Buatlah query untuk menampilkan jumlah transaksi terkecil!
3. Buatlah query untuk menampilkan menampilkan nasabah dengan jumlah transaksi terbesar!
4. Buatlah query untuk menampilkan cabang bank yang tidak memiliki nomor rekening !
5. Buatlah query untuk menampilkan nomor rekening dengan saldo diatas rata-rata !

select nama_kolom
from nama_table
where (select nama_kolom from nama_table where kondisi);

update nama_table
set nama_kolom = (select nama_kolom from nama_table where kondisi)
where nama_kolom = (select nama_kolom from nama_table where kondisi);

delete from nama_table
where (select nama_kolom from nama_table where kondisi);

-----Menampilkan data dari table transaksi yang jumlahnya  lebih dari rata-rata jumlah----
select *
from transaksi
where jumlah > (select  avg(jumlah) from transaksi);