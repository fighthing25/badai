# Badai Notch

Badai adalah aplikasi notch style untuk Windows, dengan karakter mata yang berkedip dan informasi jadwal shalat pada bagian atas layar.

## Fitur utama
- Notch transparan yang menempel di atas layar
- Auto hide setelah delay tertentu (default 1 detik)
- Mata berkedip acak dan ekspresi ringan
- Tampilkan shalat berikutnya dan countdown
- Pilih kota secara manual dari daftar
- Notifikasi shalat standar Windows

## Persyaratan
- Windows 10 / 11
- .NET 8 SDK
- Visual Studio 2022 atau VS Code dengan C# extension

## Jalankan di Windows

```powershell
dotnet restore

dotnet build

dotnet run --project BadaiNotch/BadaiNotch.csproj
```

## Publish untuk installasi

```powershell
dotnet publish BadaiNotch/BadaiNotch.csproj -c Release -r win-x64 --self-contained false -p:PublishSingleFile=true -o publish
```

Hasil publish akan berada di folder `publish` dan bisa dijalankan sebagai aplikasi Windows standalone.

## Catatan
- Data shalat diambil dari API publik Aladhan.
- Untuk keakuratan Indonesia, usahakan dibandingkan lagi dengan jadwal Kemenag RI untuk validasi final.
