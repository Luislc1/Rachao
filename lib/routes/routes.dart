import 'package:flutter/material.dart';
import 'package:rachao/Views/Home/Home.dart';
import 'package:rachao/Views/Home/esporte.dart';
import 'package:rachao/Views/Login/login.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const LoginScreen(),
    '/login': (context) => const LoginScreen(),
    '/esporte': (context) => const SportScreen(),
    '/menu': (context) => const HomeScreen(),
  };
}
