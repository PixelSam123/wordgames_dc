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

  void set(double value) async {
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

  void set(bool value) async {
    (await prefs).setBool('isDarkMode', value);
    state = AsyncValue.data(value);
  }
}
