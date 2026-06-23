import 'package:flutter/material.dart';
import 'package:job_spot/core/utils/themes/app_colors.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      primary: AppColors.primaryColor,
      surface: AppColors.backgroundColor,
      surfaceDim: AppColors.whiteColor,
      secondary: AppColors.secondaryColor,
      onSurface: AppColors.orangeColor,
      outline: AppColors.lightBlackColor,
      // shadow: AppColors.greyColor,
      // onPrimary: AppColors.dividerColor,
      // onSurfaceVariant: AppColors.unselectedColor,
      // error: AppColors.errorColor,
    ),
    // inputDecorationTheme: InputDecorationTheme(
    //   border: const OutlineInputBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(8)),
    //     borderSide: BorderSide(color: AppColors.greyColor),
    //   ),
    //   focusedBorder: const OutlineInputBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(8)),
    //     borderSide: BorderSide(color: AppColors.indicatorColor),
    //   ),
    //   enabledBorder: const OutlineInputBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(8)),
    //     borderSide: BorderSide(color: AppColors.greyColor),
    //   ),
    //   errorBorder: const OutlineInputBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(8)),
    //     borderSide: BorderSide(color: AppColors.errorColor),
    //   ),
    //   focusedErrorBorder: const OutlineInputBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(8)),
    //     borderSide: BorderSide(color: AppColors.errorColor),
    //   ),
    // ),
  );

  // static ThemeData get darkTheme => ThemeData.from(
  //   useMaterial3: true,
  //   colorScheme: ColorScheme.fromSeed(
  //     seedColor: AppColors.primaryColor,
  //     primary: AppColors.primaryColor,
  //     surface: AppColors.backgroundColor,
  //     onPrimary: AppColors.dividerColor,
  //     onSurfaceVariant: AppColors.unselectedColor,
  //   ),
  // );
}
