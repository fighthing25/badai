# Badai Notch

A small Windows notch-style desktop app inspired by floating notification widgets, with a blinking eye mascot and Muslim prayer timing support.

## Features
- Transparent floating notch UI on the top edge of the screen
- Auto-hide after a configurable idle delay (default 1 second)
- Random blinking eyes and subtle expression changes
- Prayer schedule display for the next prayer and countdown
- City selection from a local list
- Windows notification support for prayer alerts

## Stack
- .NET 8
- WPF
- Windows Notifications
- Aladhan public API for prayer times

## Run locally

Requirements:
- Windows 10/11
- .NET 8 SDK
- Visual Studio 2022 or VS Code with C# extension

Commands:

```bash
dotnet restore
-dotnet build
-dotnet run --project BadaiNotch/BadaiNotch.csproj
```

## Notes
- This is a starter implementation for the repo `fighthing25/badai`.
- The app uses a city list and Aladhan as a source for prayer schedule data.
- For production accuracy in Indonesia, compare against Kemenag schedules and adjust local calculation rules if needed.
