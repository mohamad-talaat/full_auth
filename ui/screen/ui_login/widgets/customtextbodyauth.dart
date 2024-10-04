import 'package:flutter/material.dart';
import 'package:zeus_app/core/constant/app_styles.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String text;
  const CustomTextBodyAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppTextStyle.aBeeZeefont12boldw500
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
