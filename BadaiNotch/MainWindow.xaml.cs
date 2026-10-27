<Window x:Class="BadaiNotch.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Badai Notch"
        Height="96"
        Width="260"
        WindowStyle="None"
        AllowsTransparency="True"
        Background="Transparent"
        Topmost="True"
        ShowInTaskbar="False"
        ResizeMode="NoResize"
        SizeToContent="WidthAndHeight"
        WindowStartupLocation="Manual"
        SnapsToDevicePixels="True"
        MouseDoubleClick="Window_MouseDoubleClick">

    <Window.Resources>
        <Style x:Key="EyeStyle" TargetType="Border">
            <Setter Property="Width" Value="30"/>
            <Setter Property="Height" Value="30"/>
            <Setter Property="CornerRadius" Value="15"/>
            <Setter Property="Background" Value="#F8FAFC"/>
            <Setter Property="BorderBrush" Value="#E2E8F0"/>
            <Setter Property="BorderThickness" Value="1.5"/>
        </Style>
    </Window.Resources>

    <Border x:Name="RootBorder"
            CornerRadius="26"
            Background="#0F172A"
            BorderBrush="#334155"
            BorderThickness="1.5"
            Padding="12,10,12,10"
            Opacity="1">
        <Grid>
            <Grid.ColumnDefinitions>
                <ColumnDefinition Width="Auto"/>
                <ColumnDefinition Width="*"/>
                <ColumnDefinition Width="Auto"/>
            </Grid.ColumnDefinitions>

            <Border Grid.Column="0"
                    x:Name="EyeLeft"
                    Style="{StaticResource EyeStyle}"
                    HorizontalAlignment="Center"
                    VerticalAlignment="Center">
                <Grid>
                    <Ellipse Width="12" Height="12" Fill="#0F172A" Margin="0"/>
                    <Ellipse Width="5" Height="5" Fill="#F8FAFC" Margin="6,-2,0,0"/>
                </Grid>
            </Border>

            <StackPanel Grid.Column="1"
                        VerticalAlignment="Center"
                        HorizontalAlignment="Center"
                        Margin="10,0">
                <TextBlock x:Name="NextPrayerText"
                           Foreground="#F8FAFC"
                           FontWeight="SemiBold"
                           FontSize="18"
                           HorizontalAlignment="Center"
                           Text="Ashar"/>
                <TextBlock x:Name="CountdownText"
                           Foreground="#A5B4FC"
                           FontSize="12"
                           HorizontalAlignment="Center"
                           Text="00:10:00"/>
            </StackPanel>

            <Border Grid.Column="2"
                    x:Name="EyeRight"
                    Style="{StaticResource EyeStyle}"
                    HorizontalAlignment="Center"
                    VerticalAlignment="Center">
                <Grid>
                    <Ellipse Width="12" Height="12" Fill="#0F172A" Margin="0"/>
                    <Ellipse Width="5" Height="5" Fill="#F8FAFC" Margin="6,-2,0,0"/>
                </Grid>
            </Border>
        </Grid>
    </Border>
</Window>
