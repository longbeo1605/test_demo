import 'package:get/get.dart';
import 'package:test_ios/presentation/sign_in/controller/sign_in_controller.dart';

class SignInBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}