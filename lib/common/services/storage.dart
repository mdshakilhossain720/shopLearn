import 'package:shared_preferences/shared_preferences.dart';

class StorageService{
  late final SharedPreferences _pref;

  Future<StorageService> init() async {
    _pref = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setString(String key, String value)async{
    return await _pref.setString(key, value);
  }
}

// hive
// import 'package:hive/hive.dart';

// class StorageService {
//   late Box _box;

//   Future<StorageService> init() async {
//     _box = Hive.box('appBox');
//     return this;
//   }

//   /// Save String
//   Future<void> setString(String key, String value) async {
//     await _box.put(key, value);
//   }

//   /// Get String
//   String? getString(String key) {
//     return _box.get(key);
//   }

//   /// Remove value
//   Future<void> remove(String key) async {
//     await _box.delete(key);
//   }

//   /// Clear all data
//   Future<void> clear() async {
//     await _box.clear();
//   }
// }
