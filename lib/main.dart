import 'package:flutter/material.dart';
import 'package:rachao/Views/Home/esporte.dart';
import 'package:rachao/Views/Login/login.dart';
import 'package:rachao/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
