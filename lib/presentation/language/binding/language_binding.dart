import 'package:get/get.dart';
import 'package:test_ios/presentation/language/controller/language_controller.dart';

class LanguageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageController());
  }
}