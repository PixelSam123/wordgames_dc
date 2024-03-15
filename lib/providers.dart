import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wordgames_dc/functions/prefs_singleton.dart';

part 'providers.g.dart';

final prefs = prefsSingleton();

@riverpod
class TextScale extends _$TextScale {
  @override
  Future<double?> build() async {
    return (await prefs).getDouble('textScale');
  }

  Future<void> set(double value) async {
    (await prefs).setDouble('textScale', value);
    state = AsyncValue.data(value);
  }
}

@riverpod
class IsDarkMode extends _$IsDarkMode {
  @override
  Future<bool?> build() async {
    return (await prefs).getBool('isDarkMode');
  }

  Future<void> set(bool value) async {
    (await prefs).setBool('isDarkMode', value);
    state = AsyncValue.data(value);
  }
}

@riverpod
class SeedColor extends _$SeedColor {
  @override
  Future<String?> build() async {
    return (await prefs).getString('seedColor');
  }

  Future<void> set(String value) async {
    (await prefs).setString('seedColor', value);
    state = AsyncValue.data(value);
  }
}

@riverpod
class ServerUrl extends _$ServerUrl {
  @override
  Future<String> build() async {
    return (await prefs).getString('serverUrl') ??
        'wss://wordgames4j.azurewebsites.net/ws/anagram/1';
  }

  Future<void> set(String value) async {
    (await prefs).setString('serverUrl', value);
    state = AsyncValue.data(value);
  }
}
