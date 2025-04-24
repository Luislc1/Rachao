import 'package:flutter/material.dart';

class NavigationController {
  final PageController pageController  = PageController();
  int currentIndex = 0;

  void onTabTapped(int index) {
    currentIndex = index;
    pageController .animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onSlide(int index) {
    currentIndex = index;
  }
}