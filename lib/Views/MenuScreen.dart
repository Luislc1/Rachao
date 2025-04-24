import 'package:flutter/material.dart';
import 'package:rachao/Views/Home/esporte.dart';
import 'package:rachao/Views/Login/login.dart';
import 'package:rachao/controller/navigation_controller.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final NavigationController _navigationController = NavigationController();

  final List<Widget> _pages = [
    const SportScreen(),
    const LoginScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _navigationController.pageController.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _navigationController.pageController,
        onPageChanged: _navigationController.onSlide,
        children: _pages,
      ),
    );
  }
}
