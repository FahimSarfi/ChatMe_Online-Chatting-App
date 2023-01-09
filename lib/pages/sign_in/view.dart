import 'package:firebase_chat/common/values/colors.dart';
import 'package:firebase_chat/common/values/shadows.dart';
import 'package:firebase_chat/common/widgets/button.dart';
import 'package:firebase_chat/pages/sign_in/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildLogo() {
      return Container(
        width: 110.w,
        margin: EdgeInsets.only(top: 84.h),
        child: Column(
          children: [
            Container(
              width: 76.w,
              height: 76.w,
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 76.w,
                    decoration: const BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: [Shadows.primaryShadow],
                        borderRadius: BorderRadius.all(Radius.circular(35))),
                  )),
                  Positioned(
                      child: Image.asset(
                    "assets/images/ic_launcher.png",
                    width: 76.w,
                    height: 76.w,
                    fit: BoxFit.cover,
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
              child: Text(
                "Welcome to ChatMe",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.thirdElement,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    height: 1),
              ),
            )
          ],
        ),
      );
    }

    Widget buildThirdPartyLogin() {
      return Container(
        width: 295.w,
        margin: EdgeInsets.only(bottom: 280.h),
        child: Column(
          children: [
            Text(
              "Sign in with Google Account",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.w400,
                fontSize: 17.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 50.w, right: 50.w),
              child: FloatingActionButton.extended(
                label: const Text("Sign In"), // <-- Text
                backgroundColor: Colors.blue,
                extendedTextStyle: const TextStyle(fontSize: 18),
                icon: const Icon(
                  // <-- Icon
                  Icons.arrow_circle_right_rounded,
                  size: 24.0,
                ),
                onPressed: () {
                  controller.handleSignIn();
                },
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [buildLogo(), const Spacer(), buildThirdPartyLogin()],
        ),
      ),
    );
  }
}
