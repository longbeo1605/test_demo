import 'package:get/get.dart';
import 'package:test_ios/presentation/main/controller/main_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
  }
}