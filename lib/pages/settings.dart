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

  void _setTextScale() async {
    final textScale = ref.read(textScaleProvider.notifier);
    await textScale.set(double.parse(textScaleController.text));
  }

  void _setIsDarkMode(bool value) async {
    final isDarkMode = ref.read(isDarkModeProvider.notifier);
    await isDarkMode.set(value);
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('Dark Mode'),
                const SizedBox(width: 8.0),
                Switch(
                  value: isDarkMode.asData?.value ?? true,
                  onChanged: _setIsDarkMode,
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: textScaleController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Text Scale',
              ),
              onEditingComplete: _setTextScale,
            ),
          ],
        ),
      ),
    );
  }
}
