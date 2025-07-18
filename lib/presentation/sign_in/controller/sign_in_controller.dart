import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ios/core/common/route.dart';

class SignInController extends GetxController {
  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final RxString errorText = ''.obs;

  void login() {
    errorText.value = '';

    if (formKey.currentState?.validate() != true) return;

    if (usernameCtrl.text != 'admin' || passwordCtrl.text != 'Admin123456@') {
      errorText.value = 'Sai tên đăng nhập hoặc mật khẩu!';
      return;
    }

    Get.offAllNamed(AppPage.MAIN);
  }

  @override
  void onClose() {
    usernameCtrl.dispose();
    passwordCtrl.dispose();
    super.onClose();
  }
}
