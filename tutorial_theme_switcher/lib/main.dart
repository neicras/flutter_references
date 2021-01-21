
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_theme_switcher/view/settings.dart';
import 'package:tutorial_theme_switcher/services/theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier> (
        builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(
            theme: notifier.darkTheme ? dark: light,
            home: SettingsPage(),
          );
        },
      ),
    );
  }
}