import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_size/window_size.dart';
import 'package:wordgames_dc/pages/home.dart';
import 'package:wordgames_dc/providers.dart';

const _title = 'Wordgames Client';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final currentWindowFrame = (await getWindowInfo()).frame;

  setWindowTitle(_title);
  setWindowMinSize(const Size(480, 540));
  setWindowFrame(Rect.fromLTWH(
    currentWindowFrame.left,
    currentWindowFrame.top,
    640,
    720,
  ));

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textScale = ref.watch(textScaleProvider);
    final isDarkMode = ref.watch(isDarkModeProvider);

    if (textScale.isLoading || isDarkMode.isLoading) {
      return const Directionality(
        textDirection: TextDirection.ltr,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (textScale.hasError || isDarkMode.hasError) {
      return const Directionality(
        textDirection: TextDirection.ltr,
        child: Center(child: Text('Error while loading app settings.')),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.linear(textScale.asData?.value ?? 1.0),
        ),
        child: child!,
      ),
      title: _title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: (isDarkMode.asData?.value ?? true)
              ? Brightness.dark
              : Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}