using System.IO;
using System.Text.Json;
using System.Windows;

namespace BadaiNotch;

public partial class SettingsWindow : Window
{
    private readonly AppSettings _settings;

    public SettingsWindow(AppSettings settings)
    {
        InitializeComponent();
        _settings = settings;

        HideDelaySlider.Value = _settings.HideDelaySeconds;
        CityComboBox.Text = _settings.SelectedCity;
        NotificationsCheckBox.IsChecked = _settings.NotificationsEnabled;
    }

    private void Save_Click(object sender, RoutedEventArgs e)
    {
        _settings.HideDelaySeconds = (int)HideDelaySlider.Value;
        _settings.SelectedCity = CityComboBox.Text;
        _settings.NotificationsEnabled = NotificationsCheckBox.IsChecked == true;
        _settings.Save();
        Close();
    }
}
