import 'package:flutter/material.dart';
import 'package:job_spot/core/utils/themes/app_themes.dart';
import 'package:job_spot/features/auth/pages/sign_up_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false, 
      home: SignUpPage());
  }
}
