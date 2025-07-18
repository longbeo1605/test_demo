import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {
  static const String langKey = 'app_lang';
  final RxString currentLang = 'vi'.obs;

  @override
  void onInit() {
    super.onInit();
    _loadSavedLanguage();
  }

  Future<void> _loadSavedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(langKey);
    if (saved != null && (saved == 'vi' || saved == 'en')) {
      currentLang.value = saved;
      _updateLocale(saved);
    } else {
      currentLang.value = 'vi';
      _updateLocale('vi');
    }
  }

  Future<void> setLanguage(String code) async {
    currentLang.value = code;
    _updateLocale(code);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(langKey, code);
  }

  void _updateLocale(String code) {
    if (code == 'vi') {
      Get.updateLocale(const Locale('vi', 'VN'));
    } else {
      Get.updateLocale(const Locale('en', 'US'));
    }
  }
}
