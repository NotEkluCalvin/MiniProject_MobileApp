import 'package:flutter/material.dart';
import 'package:exvet/common/color_extension.dart';
//import 'package:exvet/view/main_tab/main_tab_view.dart';
import 'package:exvet/view/login/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'exvet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
          // ignore: deprecated_member_use
          background: TColor.gray80,
          primary: TColor.primary,
          primaryContainer: TColor.gray60,
          secondary: TColor.secondary,
        ),
        useMaterial3: false,
      ),
      //home: const MainTabView(),
      home: const WelcomeView(),
    );
  }
}
