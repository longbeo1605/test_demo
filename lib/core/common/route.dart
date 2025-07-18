import 'package:get/get.dart';
import 'package:test_ios/presentation/home_page/binding/home_page_binding.dart';
import 'package:test_ios/presentation/home_page/view/home_page_screen.dart';
import 'package:test_ios/presentation/language/binding/language_binding.dart';
import 'package:test_ios/presentation/language/view/language_screen.dart';
import 'package:test_ios/presentation/main/binding/main_binding.dart';
import 'package:test_ios/presentation/main/view/main_screen.dart';
import 'package:test_ios/presentation/sign_in/binding/sign_in_binding.dart';
import 'package:test_ios/presentation/sign_in/view/sign_in_screen.dart';

class AppPage{
  static const String SIGN_IN = '/sign_in';
  static const String HOME = '/home';
  static const String MAIN = '/main';
  static const String LANGUAGE = '/language';

  static final List<GetPage> pages = [
    GetPage(
      name: SIGN_IN,
      page: () => const SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: HOME,
      page: () => const HomePageScreen(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: MAIN,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: LANGUAGE,
      page: () => const LanguageScreen(),
      binding: LanguageBinding(),
    ),
  ];
}