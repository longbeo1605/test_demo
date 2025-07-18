import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_ios/core/app/app_color.dart';
import 'package:test_ios/core/app/app_icons.dart';
import 'package:test_ios/core/app/app_text_styles.dart';
import 'package:test_ios/core/common/route.dart';
import 'package:test_ios/generated/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  String getCurrentLanguageDisplay(BuildContext context) {
    final code = Get.locale?.languageCode ?? 'en';
    switch (code) {
      case 'vi':
        return 'Việt Nam (VN)';
      case 'en':
      default:
        return 'English (US)';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 132.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                ),
              ),
              Positioned(
                left: 16.w,
                right: 16.w,
                top: 89.h,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 16, 26, 14),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
                          ), // Đặt đúng path avatar
                        ),
                        SizedBox(width: 24.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Thùy Tiên',
                              style: AppTextStyles.s20Bold.copyWith(
                                color: AppColors.textTitle,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'vanmach@gmail.com',
                              style: AppTextStyles.s14Regular.copyWith(
                                color: AppColors.textSub,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: AppIcons.icLanguage(),
              title: Text(
                AppLocalizations.of(context)!.language,
                style: AppTextStyles.s16Bold.copyWith(
                  color: AppColors.textTitle,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    getCurrentLanguageDisplay(context),
                    style: AppTextStyles.s14Regular.copyWith(
                      color: AppColors.textSub,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.textSub,
                  ),
                ],
              ),
              onTap: () => Get.toNamed(AppPage.LANGUAGE),
            ),
          ),
          const SizedBox(height: 16),

          // Log out
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.logout, color: AppColors.logout),
              title: Text(
                AppLocalizations.of(context)!.logOut,
                style: AppTextStyles.s16Bold.copyWith(
                  color: AppColors.logout,
                ),
              ),
              onTap: () => Get.offAndToNamed(AppPage.SIGN_IN),
            ),
          ),
        ],
      ),
    );
  }
}
