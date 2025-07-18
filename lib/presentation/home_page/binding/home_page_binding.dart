import 'package:get/get.dart';
import 'package:test_ios/presentation/home_page/controller/home_page_controller.dart';

class HomePageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}