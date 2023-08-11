import 'package:firebase_chat/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';

class ApplicationController extends GetxController {
  final state = ApplicationState();
  ApplicationController();

  late final List<String> tabTitles;
  late final List<String> pageController;
  late final List<String> bottomtabs;

  void handPageChanged(int index) {
    state.page = index;
  }

  @override
  void onInit() {
    super.onInit();
    tabTitles = ['Chat', 'Contact', 'profile'];
    bottomtabs = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: AppColors.thirdElementText,
          ),
          activeIcon: Icon(
            Icons.message,
            color: AppColors.secondaryElementText,
          ),
          label: 'Chat',
          backgroundColor: AppColors.primaryBackground),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.contact_page,
            color: AppColors.thirdElementText,
          ),
          activeIcon: Icon(
            Icons.contact_page,
            color: AppColors.secondaryElementText,
          ),
          label: 'Contact',
          backgroundColor: AppColors.primaryBackground),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: AppColors.thirdElementText,
          ),
          activeIcon: Icon(
            Icons.person,
            color: AppColors.secondaryElementText,
          ),
          label: 'Person',
          backgroundColor: AppColors.primaryBackground)
    ].cast<String>();
    pageController = PageController(initialPage: state.page) as List<String>;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
