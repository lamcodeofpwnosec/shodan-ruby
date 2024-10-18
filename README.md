# Ruby Subdomain Shodan Enumerate use APIs
Ruby Subdomain Enumeration using Shodan API Premium. This application utilizes Shodan features to filter results based on IP and Hostname, and returns as much subdomain data as possible according to the results obtained from the Shodan API.

## Fitur Proyek
1. **Penggunaan Shodan API Premium:** Akses data yang lebih mendalam dan luas, yang hanya tersedia bagi pengguna dengan API Premium.
1. **Pencarian berdasarkan hostname dan IP:** Filter hasil pemindaian berdasarkan hostname dan IP yang terhubung dengan subdomain.
1. **Tampilan hasil yang mudah dipahami:** Daftar subdomain lengkap dengan IP dan hostname akan ditampilkan dalam format yang mudah dibaca.
1. **Struktur modular:** Proyek ini diatur secara modular, sehingga memudahkan pengembangan lebih lanjut.
1. **Integrasi lanjutan:** Proyek ini bisa diintegrasikan ke dalam aplikasi keamanan atau sistem pemantauan lainnya.

## Panduan Installasi
1. Clone atau Download Proyek: Clone proyek dari repository atau unduh file proyek.
```
git clone https://github.com/lamcodeofpwnosec/shodan-ruby.git
```
2. Masuk ke direktori proyek:
```
cd shodan-ruby
```
3. Install dependensi dengan Bundler:
Project ini menggunakan Bundler untuk mengelola dependensi. Pastikan Bundler terinstall, lalu jalankan perintah berikut:
```
bundle install
```
4. Konfigurasi Shodan API Key: Buat file `.env` di root direktori proyek dan masukkan API Key Shodan Anda:
```
SHODAN_API_KEY=your_shodan_api_key_here
```
5. Konfigurasi di `config/config.rb`:
Konfigurasi tambahan seperti batas jumlah hasil yang ditampilkan bisa diatur di file `config/config.rb`. Misalnya, untuk membatasi hasil maksimal yang diambil, bisa diubah di sana:
```
SHODAN_API_KEY = ENV['SHODAN_API_KEY']
MAX_RESULTS = 1000 # Batas maksimum hasil
```

