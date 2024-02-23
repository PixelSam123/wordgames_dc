import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:window_size/window_size.dart';
import 'package:wordgames_dc/pages/home.dart';

part 'main.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final currentWindowFrame = (await getWindowInfo()).frame;

  setWindowTitle('Wordgames Client');
  setWindowMinSize(const Size(640, 720));
  setWindowFrame(Rect.fromLTWH(
    currentWindowFrame.left,
    currentWindowFrame.top,
    720,
    1024,
  ));

  runApp(const ProviderScope(child: MyApp()));
}

@riverpod
Future<bool> getIsLargerTextSize(GetIsLargerTextSizeRef ref) async {
  final prefs = await SharedPreferences.getInstance();

  final value = prefs.getBool('isLargerTextSize');
  return value ?? false;
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLargerTextSize = ref.watch(getIsLargerTextSize);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1.0),
        ),
        child: child!,
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
