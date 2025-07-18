import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_ios/core/app/app_icons.dart';
import 'package:test_ios/core/app/app_text_styles.dart';
import 'package:test_ios/core/app/app_color.dart';
import 'package:test_ios/generated/app_localizations.dart';
import 'package:test_ios/presentation/language/controller/language_controller.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final languageController = Get.find<LanguageController>();
  late String _selectedLang;

  @override
  void initState() {
    super.initState();
    _selectedLang = languageController.currentLang.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.language,
          style: AppTextStyles.s16Bold.copyWith(
            fontSize: 18.sp,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.textTitle,
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Radio Việt Nam
          Padding(
            padding: EdgeInsets.fromLTRB(
              16.w,
              12.h,
              16.w,
              8.h,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12.r),
              onTap: () => setState(() => _selectedLang = 'vi'),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: _selectedLang == 'vi'
                        ? AppColors.primary
                        : AppColors.divider,
                    width: 1.6,
                  ),
                  color: _selectedLang == 'vi'
                      ? AppColors.primary.withOpacity(0.08)
                      : Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                child: Row(
                  children: [
                    Icon(
                      _selectedLang == 'vi'
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off,
                      color: _selectedLang == 'vi'
                          ? AppColors.primary
                          : AppColors.divider,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Vietnam',
                      style: AppTextStyles.s16Bold.copyWith(
                        color: _selectedLang == 'vi'
                            ? AppColors.primary
                            : AppColors.textTitle,
                      ),
                    ),
                    const Spacer(),
                    AppIcons.icVietnam(),
                  ],
                ),
              ),
            ),
          ),
          // Radio English
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => setState(() => _selectedLang = 'en'),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: _selectedLang == 'en'
                        ? AppColors.primary
                        : AppColors.divider,
                    width: 1.6,
                  ),
                  color: _selectedLang == 'en'
                      ? AppColors.primary.withOpacity(0.08)
                      : Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                child: Row(
                  children: [
                    Icon(
                      _selectedLang == 'en'
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off,
                      color: _selectedLang == 'en'
                          ? AppColors.primary
                          : AppColors.divider,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'English (US)',
                      style: AppTextStyles.s16Bold.copyWith(
                        color: _selectedLang == 'en'
                            ? AppColors.primary
                            : AppColors.textTitle,
                      ),
                    ),
                    const Spacer(),
                    AppIcons.icUSA(),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          // SAVE button
          SafeArea(
            minimum: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: SizedBox(
              width: double.infinity,
              height: 54.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  textStyle:
                      AppTextStyles.s16Bold.copyWith(color: Colors.white),
                ),
                onPressed: () {
                  languageController.setLanguage(_selectedLang);
                },
                child: Text(
                  AppLocalizations.of(context)!.save,
                  style: AppTextStyles.s16Bold.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
