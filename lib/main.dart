import 'package:flutter/material.dart';
import 'package:wwebprofile/constant/app_theme.dart';
import 'package:wwebprofile/screen/home_page.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: AppTheme().blackColor,
      ),
      home: const HomePage(),
    );
  }
}
