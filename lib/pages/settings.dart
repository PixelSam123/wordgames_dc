import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordgames_dc/providers.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  final textScaleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textScaleController.text =
        (ref.read(textScaleProvider).asData?.value ?? 1.0).toString();
  }

  @override
  void dispose() {
    textScaleController.dispose();
    super.dispose();
  }

  void _setTextScale() {
    final textScale = ref.read(textScaleProvider.notifier);
    textScale.set(double.parse(textScaleController.text));
  }

  void _setIsDarkMode(bool value) {
    final isDarkMode = ref.read(isDarkModeProvider.notifier);
    isDarkMode.set(value);
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Dark Mode'),
            Switch(
              value: isDarkMode.asData?.value ?? true,
              onChanged: _setIsDarkMode,
            ),
            const Text('Text Scale'),
            TextField(
              controller: textScaleController,
              onEditingComplete: _setTextScale,
            ),
          ],
        ),
      ),
    );
  }
}
