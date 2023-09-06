import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'settings_screen';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}
