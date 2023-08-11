import 'package:firebase_chat/pages/application/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildPageview() {
      return PageView(
        physics: NeverScrollableScrollPhysics(),
        //controller: controller.pageController,
        onPageChanged: controller.handPageChanged,
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
