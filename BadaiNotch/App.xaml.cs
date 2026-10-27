using System.Windows;

namespace BadaiNotch;

public partial class App : Application
{
    protected override void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);
        Current.ShutdownMode = ShutdownMode.OnMainWindowClose;
    }
}
