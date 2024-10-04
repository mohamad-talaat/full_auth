import 'package:flutter/material.dart';
import 'package:zeus_app/core/constant/app_styles.dart';
import 'package:zeus_app/core/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: AppColor.black,
        textColor: Colors.white,
        child: Text(
          text,
          style: AppTextStyle.aBeeZeefont20boldblack
              .copyWith(fontWeight: FontWeight.bold, color: AppColor.white),
        ),
      ),
    );
  }
}
