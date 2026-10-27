<Window x:Class="BadaiNotch.SettingsWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Badai Settings"
        Width="380"
        Height="290"
        WindowStartupLocation="CenterOwner"
        ResizeMode="NoResize"
        ShowInTaskbar="False">

    <Grid Margin="18">
        <StackPanel>
            <TextBlock Text="Hide delay (seconds)" Margin="0,0,0,6" FontWeight="SemiBold"/>
            <Slider x:Name="HideDelaySlider" Minimum="1" Maximum="10" Value="1" TickPlacement="BottomRight" IsSnapToTickEnabled="True"/>

            <TextBlock Text="Selected city" Margin="0,14,0,6" FontWeight="SemiBold"/>
            <ComboBox x:Name="CityComboBox" SelectedIndex="0">
                <ComboBoxItem>Jakarta</ComboBoxItem>
                <ComboBoxItem>Bandung</ComboBoxItem>
                <ComboBoxItem>Surabaya</ComboBoxItem>
                <ComboBoxItem>Semarang</ComboBoxItem>
                <ComboBoxItem>Yogyakarta</ComboBoxItem>
                <ComboBoxItem>Medan</ComboBoxItem>
                <ComboBoxItem>Bekasi</ComboBoxItem>
                <ComboBoxItem>Makassar</ComboBoxItem>
                <ComboBoxItem>Palembang</ComboBoxItem>
            </ComboBox>

            <CheckBox x:Name="NotificationsCheckBox" Content="Prayer notifications enabled" IsChecked="True" Margin="0,18,0,0"/>

            <TextBlock Text="Notification reminder (minutes before prayer)" Margin="0,14,0,6" FontWeight="SemiBold"/>
            <Slider x:Name="NotificationMinutesSlider" Minimum="1" Maximum="30" Value="10" TickPlacement="BottomRight" IsSnapToTickEnabled="True"/>

            <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" Margin="0,18,0,0">
                <Button Content="Save" Width="120" Height="32" Click="Save_Click"/>
            </StackPanel>
        </StackPanel>
    </Grid>
</Window>
