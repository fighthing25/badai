# Badai Notch

Badai adalah aplikasi notch style untuk Windows, dengan karakter mata yang berkedip dan informasi jadwal shalat pada bagian atas layar.

## Fitur utama
- Notch transparan yang menempel di atas layar
- Auto hide setelah delay tertentu (default 1 detik)
- Mata berkedip acak dan ekspresi ringan
- Tampilkan shalat berikutnya dan countdown
- Pilih kota secara manual dari daftar
- Notifikasi shalat standar Windows
- Siap di-publish dan dibuat installer Windows

## Persyaratan
- Windows 10 / 11
- .NET 8 SDK
- Visual Studio 2022 atau VS Code dengan C# extension
- (Opsional) Inno Setup untuk membuat installer `.exe`

## Jalankan di Windows

```powershell
dotnet restore

dotnet build

dotnet run --project BadaiNotch/BadaiNotch.csproj
```

## Publish untuk aplikasi siap pakai

```powershell
dotnet publish BadaiNotch/BadaiNotch.csproj -c Release -r win-x64 --self-contained false -p:PublishSingleFile=true -o publish
```

Hasil publish akan berada di folder `publish` dan bisa dijalankan langsung sebagai aplikasi Windows.

## Buat installer Windows

1. Publish aplikasi terlebih dahulu
2. Instal Inno Setup dari: https://jrsoftware.org/isdl.php
3. Buka file installer `installer/BadaiNotch.iss`
4. Klik Compile
5. Hasil file installer akan dibuat di folder `installer/Output`

Contoh:

```powershell
dotnet publish BadaiNotch/BadaiNotch.csproj -c Release -r win-x64 --self-contained false -p:PublishSingleFile=true -o publish
```

## Catatan
- Data shalat diambil dari API publik Aladhan.
- Untuk keakuratan Indonesia, usahakan dibandingkan lagi dengan jadwal Kemenag RI untuk validasi final.
- Aplikasi dibuat agar bisa berjalan tanpa akses lokasi GPS, karena kota dipilih secara manual.

## Struktur utama
- `BadaiNotch/MainWindow.xaml` — antarmuka notch utama
- `BadaiNotch/MainWindow.xaml.cs` — logika aplikasi, hitung waktu shalat, auto-hide, notifikasi
- `BadaiNotch/SettingsWindow.xaml` — pengaturan kota dan delay
- `BadaiNotch/PrayerNotificationService.cs` — notifikasi shalat
- `installer/BadaiNotch.iss` — script installer Inno Setup
