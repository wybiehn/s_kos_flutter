# S-Kos — Project Context

## Tujuan
Migrasi website marketplace kos Laravel menjadi aplikasi Flutter Android dan Web, menggunakan Laravel sebagai backend.

## Repository
Laravel: https://github.com/sulaeman-kos/s_kos
Backend lokal: D:\s_kos
Flutter lokal: D:\s_kos_flutter

## Backend
Laravel dan MySQL sudah berjalan. Migration, profil awal, dan storage link berhasil. Alur registrasi penyewa/pemilik, listing, pencarian, detail kos, dan booking telah diuji. Pembayaran belum dikonfigurasi.

## Flutter
Flutter 3.44.4 dan Android toolchain siap. Project berhasil dibuat dan dijalankan di Chrome.
lib/main.dart saat ini berisi beranda S-Kos, pencarian sederhana, kartu Kos Melati Residence, serta dialog detail. Data masih hardcoded, belum terhubung dengan API.

## Langkah berikutnya
1. Siapkan folder lib/screens, lib/widgets, lib/models, lib/services.
2. Pisahkan HomeScreen dari main.dart tanpa merusak aplikasi.
3. Buat layar lainnya secara bertahap.
4. Implementasikan REST API Laravel dan hubungkan Flutter.
5. Uji Android dan siapkan GitHub kelompok.

## Aturan
Kerjakan secara bertahap, uji setiap perubahan, pertahankan struktur kode, dan jangan mengulangi konfigurasi yang telah berhasil.