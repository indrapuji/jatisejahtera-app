import 'package:flutter/material.dart';
import 'package:jatisejahtera/pages/home_screen.dart';
import 'package:jatisejahtera/pages/kesehatan_screen.dart';
import 'package:jatisejahtera/pages/login_screen.dart';
import 'package:jatisejahtera/pages/main_screen.dart';
import 'package:jatisejahtera/pages/onboarding_screen.dart';
import 'package:jatisejahtera/pages/pendidikan_screen.dart';
import 'package:jatisejahtera/pages/perumahan_screen.dart';
import 'package:jatisejahtera/pages/signup_screen.dart';
import 'package:jatisejahtera/pages/sosial_screen.dart';
import 'package:jatisejahtera/pages/welcome_screen.dart';

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
      home: const OnBoardingScreen(),
      routes: {
        '/welcomepage': (context) => const WelcomeScreen(),
        '/signuppage': (context) => const SignupScreen(),
        '/signinpage': (context) => const LoginScreen(),
        '/mainpage': (context) => const MainScreen(),
        '/homepage': (context) => const HomeScreen(),
        '/program/pendidikan': (context) => PendidikanScreen(),
        '/program/sosial': (context) => SosialScreen(),
        '/program/perumahan': (context) => const PerumahanScreen(),
        '/program/kesehatan': (context) => KesehatanScreen()
      },
    );
  }
}
