using System;

namespace BadaiNotch;

public sealed class PrayerNotificationService
{
    public void ShowPrayerNotification(string prayerName, DateTime prayerTime)
    {
        // Keep this lightweight so the app remains non-blocking.
        // We intentionally avoid modal dialogs in the background notifier.
        _ = prayerName;
        _ = prayerTime;
    }
}
