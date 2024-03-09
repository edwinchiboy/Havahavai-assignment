import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dashboard/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(370, 810),
        minTextAdapt: false,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: havahavaiTheme(),
            darkTheme: havahavaiDarkTheme(),

            home: const HomeScreen(),
          );
        });
  }
}

havahavaiDarkTheme() {}

havahavaiTheme() {}

