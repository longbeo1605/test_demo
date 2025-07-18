import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_ios/core/app/app_color.dart';
import 'package:test_ios/core/app/app_text_styles.dart';
import 'package:test_ios/generated/app_localizations.dart';
import 'package:test_ios/presentation/sign_in/controller/sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.signIn,
          style: AppTextStyles.s16Bold.copyWith(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.usernameCtrl,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelStyle: AppTextStyles.s14Regular
                        .copyWith(color: AppColors.primary),
                  ),
                  style: AppTextStyles.s16Bold
                      .copyWith(color: AppColors.textTitle),
                  validator: (val) => val == null || val.trim().isEmpty
                      ? AppLocalizations.of(context)!.requiredUsername
                      : null,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: controller.passwordCtrl,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelStyle: AppTextStyles.s14Regular
                        .copyWith(color: AppColors.primary),
                  ),
                  style: AppTextStyles.s16Bold
                      .copyWith(color: AppColors.textTitle),
                  validator: (val) => val == null || val.isEmpty
                      ? AppLocalizations.of(context)!.requiredPassword
                      : null,
                ),
                Obx(
                  () => controller.errorText.value.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Text(
                            controller.errorText.value,
                            style: AppTextStyles.s14Regular
                                .copyWith(color: Colors.red),
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
                SizedBox(height: 32.h),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      textStyle:
                          AppTextStyles.s16Bold.copyWith(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: controller.login,
                    child: Text(
                      AppLocalizations.of(context)!.signIn,
                      style: AppTextStyles.s16Bold.copyWith(
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Tài khoản demo: admin\nMật khẩu: Admin123456@',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.s14Regular.copyWith(
                    color: AppColors.textSub,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
