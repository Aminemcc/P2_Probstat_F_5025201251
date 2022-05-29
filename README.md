# P2_Probstat_F_5025201251

# Nomor 1

Kita masukkan datanya

![1](https://user-images.githubusercontent.com/82025946/170872162-68af19e9-7eb5-4c56-8a56-2e7fb64d0519.jpg)

# Nomor 1.A

Kita cari Standar Deviasi dengan fungsi sd()

![sd](https://user-images.githubusercontent.com/82025946/170872856-cca40ee6-8b5e-447e-bf2e-40415dc4fe1c.jpg)

# Nomor 1.B

Untuk mencari nilai dari t(p-value) dapat menggunakan fungsi t.test()

![1b](https://user-images.githubusercontent.com/82025946/170873066-426f1cce-58be-41f8-b150-dc0543f954ed.jpg)

p-value = 0.0034

# Nomor 1.C

menggunakan t.test() dengan nilai alpha = 5% atau 0.05 

![1c](https://user-images.githubusercontent.com/82025946/170872981-a58143e8-737f-41c8-a435-09cafd6aca81.jpg)

dan fungsi var.test() yang memeriksa hasil perbandingan dari variabel x dan y

![vartest](https://user-images.githubusercontent.com/82025946/170873367-f95047df-01f2-44ab-8889-9d5f190f59c9.jpg)

Dapat terlihat bahwa perbedaannya tidak terlalu signifikan sehingga dapat ditarik kesimpulan bahwa tidak terdapat pengaruh yang signifikan

# Nomor 2

# Nomor 2.A

Tidak setuju, karena 20.000 KM per tahun = 2000 per bulan = 66.666 km per hari, terlalu banyak klaimnya menurut saya

# Nomor 2.B
masukkan nilai rata rata, standar deviasi, banyak sampel kedalam fungsi tsum.test untuk mengecek hipotesa

![2b](https://user-images.githubusercontent.com/82025946/170873884-0cf2b80b-ab70-4f2d-b6e7-4d03168d96b8.jpg)

# Nomor 2.C

null hipotesisnya adalah H0 : μ = 20000 dan alternatif hipotesisnya adalah H1 : μ > 20000.

dilihat dari p-value mendekati 0, maka H0 benar dan klaim diatas benar

# Nomor 3

![tabel nomor 3](https://user-images.githubusercontent.com/82025946/170874351-562638a2-8c20-416f-a202-af25754f48fe.jpg)

#Nomor 3.A

nilai H0 :

![3ah0](https://user-images.githubusercontent.com/82025946/170874306-768e28de-51b2-421f-9801-9fc94acd075d.jpg)

nilai H1 :

![3ah1](https://user-images.githubusercontent.com/82025946/170874308-24247f60-5dd8-4dc8-8256-ebee0af8b114.jpg)

# Nomor 3.B

![3b](https://user-images.githubusercontent.com/82025946/170874597-b4cb4901-493f-4bea-882c-089a30959727.jpg)

# Nomor 3.C
Lakukan Uji Statistik (df = 2)

Gunakan plotdist, tetapi sebelum itu install mosaic agar bisa menggunakan plotdist()

![3c](https://user-images.githubusercontent.com/82025946/170875022-15cc7b32-66d5-41be-93e5-439c8b26d167.jpg)

Hasilnya :

![plotdist](https://user-images.githubusercontent.com/82025946/170875239-64b03760-65b3-4220-9b22-caa520401e47.jpg)

# Nomor 3.D

Nilai Kritikal alpha = 0.05 :

![3d](https://user-images.githubusercontent.com/82025946/170875359-ae0541f4-aa45-4e63-a9fa-25d30ca88bcf.jpg)

# Nomor 3.E

Keputusan dapat dibuat dengan t.test

# Nomor 3.F

Keesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik. Akan tetapi tidak signifikan jika dipengaruhi nilai kritikal.

# Nomor 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika : diketahui dataset https://intip.in/datasetprobstat1 H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama. Maka Kerjakan atau Carilah:

# Nomor 4.A

![4a](https://user-images.githubusercontent.com/82025946/170875541-78419461-f558-4663-947c-eb6954ad3be3.jpg)

Lakukan Grouping

![4a2](https://user-images.githubusercontent.com/82025946/170875777-e17670d9-bdcd-4b9c-86fb-104b064ed1f5.jpg)

# Nomor 4.B

![4b](https://user-images.githubusercontent.com/82025946/170875849-af2d74f9-c88e-473c-8f4f-c8cba13f9f7c.jpg)

Setelah di jalankan maka nilai p-value = 0.8054. Kesimpulan yang didapatkan yaitu Bartlett's K-squared memiliki nilai sebesar 0.43292 dan df bernilai 2

# Nomor 4.C

dengan fungsi qqnorm dan qqline, didapat plot dibawah

```
qqnorm(group1$Length)
qqline(group1$Length)
```

![qqnormline](https://user-images.githubusercontent.com/82025946/170875809-52e7b3e9-ecc4-42ce-b102-4c0ec1def665.jpg)

# Nomor 4.D

Setelah di jalankan maka nilai p-value = 0.8054.

# Nomor 4.E

langkah pertama :
```
model1 <- lm(Length~Group, data=myFile)
```

lalu lanjut jalankan anova
```
anova(model1)
```

lalu lanjut model post-hoc Tukery HSD
```
TukeyHSD(aov(model1))
```



