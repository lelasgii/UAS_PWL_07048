
# Ruwang Kayue

### “Ruang Bernilai untuk Karya Kayu Nusantara”

**Ruwang Kayue** adalah platform e-commerce berbasis Laravel, yang kami bangun sebagai ruang digital bagi para pengrajin dan pelaku usaha lokal, khususnya yang berkarya di dunia **kerajinan, peralatan, dan furnitur kayu berkualitas**.  Nama “Ruwang” berasal dari Bahasa Jawa yang berarti “ruang”, melambangkan misi kami visi kami sebagai ruang berkarya, ruang bertumbuh, dan ruang apresiasi untuk semua karya berbahan kayu dari tangan-tangan lokal Indonesia.

---

## ⚙️ Tech Stack

| Layer        | Tools / Framework           |
|--------------|-----------------------------|
| Backend      | Laravel 10.x                |
| Frontend     | Blade + Bootstrap 5         |
| Database     | MySQL                       |
| Auth System  | Laravel Auth + Google OAuth |
| Payment      | Midtrans (Snap API)         |
| Local Dev    | XAMPP / Laravel Valet       |

---

## Cara Instalasi Lokal

Ikuti langkah-langkah di bawah ini untuk menjalankan **Ruwang Kayue** secara lokal:


### 1. Buat Database

Buat database baru dengan nama:

```
ruwang_kayu
```

Pastikan nama ini sesuai dengan pengaturan di file `.env`.

----------

### 2. Clone Project & Masuk ke Folder

```
git clone https://github.com/lelasgii/UAS_PWL_07048.git
cd UAS_PWL_07048
```

----------

### 3. Install Dependency

```
composer install
npm install && npm run dev
```

----------

### 4. Setup File .env

```
cp .env.example .env
```

Edit isi `.env` dan sesuaikan bagian berikut:

```
DB_DATABASE=ruwang_kayu
DB_USERNAME=root
DB_PASSWORD=

MIDTRANS_SERVER_KEY=your_server_key
MIDTRANS_CLIENT_KEY=your_client_key
```
Ambil kredensial Midtrans dari Midtrans Dashboard

----------

### 5. Import Database

-   Buka phpMyAdmin
    
-   Pilih database `ruwang_kayu`
    
-   Masuk tab **Import**
    
-   Pilih file `ruwang_kayu.sql` dari folder project
    
-   Klik **Go**
    

----------

### 6. Generate App Key

```
php artisan key:generate
```

----------

### 7. Jalankan Server

```
php artisan serve
```

Buka browser dan akses:
```
http://localhost:8000
```
