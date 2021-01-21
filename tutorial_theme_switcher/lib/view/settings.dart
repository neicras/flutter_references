

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_theme_switcher/services/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Switcher"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer<ThemeNotifier> (
              builder: (context, notifier, child) {
                return SwitchListTile(
                  title: Text("Dark Mode"),
                  onChanged: (value) {
                    notifier.toggleTheme();
                  },
                  value: notifier.darkTheme,
                );
              },
            ),
            Card(
              child: ListTile(
                title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}