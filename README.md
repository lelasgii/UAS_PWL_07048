# Ruwang Kayue

### “Ruang Bernilai untuk Karya Kayu Nusantara”

**Ruwang Kayue** adalah platform e-commerce berbasis Laravel, yang kami bangun sebagai ruang digital bagi para pengrajin dan pelaku usaha lokal — khususnya yang berkarya di dunia **kerajinan, peralatan, dan furnitur kayu berkualitas**.  

Nama “Ruwang” berasal dari Bahasa Jawa yang berarti “ruang”, melambangkan misi kami sebagai:
- ruang untuk berkarya,
- ruang untuk tumbuh,
- ruang untuk mengapresiasi tangan-tangan lokal Indonesia.

---

## ⚙️ Tech Stack

| Layer        | Tools / Framework         |
|--------------|----------------------------|
| Backend      | Laravel 10.x               |
| Frontend     | Blade + Bootstrap 5        |
| Database     | MySQL                      |
| Auth System  | Laravel Auth + Google OAuth|
| Payment      | Midtrans (Snap API)        |
| Local Dev    | XAMPP / Laravel Valet      |

---

Ikuti langkah-langkah di bawah ini untuk menjalankan proyek Ruwang Kayue secara lokal:

### 1. Clone repository

```bash
git clone https://github.com/lelasgii/UAS_PWL_07048.git
cd UAS_PWL_07048

### 2. Install dependencies

'''bash
composer install
npm install && npm run dev

### 3. Setup environment

'''bash
cp .env.example .env
Edit konfigurasi .env seperti berikut:

APP_NAME=Ruwang Kayu
APP_URL=http://localhost:8000

DB_DATABASE=ruwang_kayu
DB_USERNAME=root
DB_PASSWORD=

MIDTRANS_SERVER_KEY=your_server_key
MIDTRANS_CLIENT_KEY=your_client_key
MIDTRANS_IS_PRODUCTION=false
MIDTRANS_IS_SANITIZED=true
MIDTRANS_IS_3DS=true
🔐 Ambil kredensial Midtrans dari Midtrans Dashboard

### 4. Generate app key

'''bash
php artisan key:generate

### 5. Migrate database & seed dummy data

'''bash
php artisan migrate --seed

### 6. Jalankan server

'''bash
php artisan serve

Buka browser di:
http://localhost:8000