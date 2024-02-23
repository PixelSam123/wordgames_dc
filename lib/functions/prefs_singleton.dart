import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? _instance;

Future<SharedPreferences> prefsSingleton() async {
  return _instance ??= await SharedPreferences.getInstance();
}
