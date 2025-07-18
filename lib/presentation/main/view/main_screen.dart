import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ios/core/app/app_icons.dart';
import 'package:test_ios/generated/app_localizations.dart';
import 'package:test_ios/presentation/home_page/view/home_page_screen.dart';
import 'package:test_ios/presentation/main/controller/main_controller.dart';
import 'package:test_ios/presentation/profile/view/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MainController controller = Get.put(MainController());

  final List<Widget> screens = const [
    HomePageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: screens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeTab,
          items: [
            BottomNavigationBarItem(
              icon: controller.selectedIndex.value == 0
                  ? AppIcons.icBriefcase(size: 28)
                  : AppIcons.icUnactiveBriefcase(size: 28),
              label: AppLocalizations.of(context)!.home,
            ),
            BottomNavigationBarItem(
              icon: controller.selectedIndex.value == 1
                  ? AppIcons.icActiveProfile(size: 28)
                  : AppIcons.icProfile(size: 28),
              label: AppLocalizations.of(context)!.profile,
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
