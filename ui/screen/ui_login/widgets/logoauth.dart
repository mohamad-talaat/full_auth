import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeus_app/core/constant/app_styles.dart';
import 'package:zeus_app/core/constant/imgaeasset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 70,
        backgroundColor: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(0), // Border radius
          child: ClipOval(
            child: Image.asset(
              AppImageAsset.logo,
            ),
          ),
        ));
  }
}

class Apptitle extends StatelessWidget {
  const Apptitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(0), // Border radius
        child: ClipOval(
          child: Text("Log In".tr,
              style: AppTextStyle.aBeeZeefont30boldblack
                  .copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
