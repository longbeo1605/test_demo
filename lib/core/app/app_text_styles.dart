import 'package:flutter/material.dart';
import 'app_color.dart'; // đổi đúng path nếu cần

class AppTextStyles {
  // Bold
  static const TextStyle s24Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static const TextStyle s20Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static const TextStyle s16Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  // Regular
  static const TextStyle s16Regular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.primary,
  );

  static const TextStyle s14Regular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.primary,
  );
}
