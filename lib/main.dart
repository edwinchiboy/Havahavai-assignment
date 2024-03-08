import 'package:flutter/material.dart';

import 'dashboard/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: havahavaiTheme(),
      darkTheme: havahavaiDarkTheme(),

      home: const HomeScreen(),
    );
  }

  havahavaiDarkTheme() {}

  havahavaiTheme() {}
}

