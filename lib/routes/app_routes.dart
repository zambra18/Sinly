import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/info_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String home = '/home';
  static const String info = '/info';
  static const String register = '/register';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => const LoginScreen(),
      home: (context) => const HomeScreen(),
      info: (context) => const InfoScreen(),
      register: (context) => const RegisterScreen(),
    };
  }
}
