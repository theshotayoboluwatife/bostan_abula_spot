import 'package:flutter/material.dart';

import 'custom_text.dart';

class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xffFA4A0C)),
        child: CustomText(
          text: text,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final double borderRadius;
  final double? width, height, textSize;
  final FontWeight? textWeight;
  final Color? textColor, buttonColor;
  final void Function()? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.borderRadius = 16,
    this.width = 250,
    this.height = 45,
    this.textSize = 14,
    this.textWeight = FontWeight.w500,
    this.buttonColor = const Color(0xff3F37C9),
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        child: CustomText(
          text: text,
          fontSize: textSize,
          fontWeight: textWeight,
          fontFamily: 'poppins',
          color: textColor,
        ),
      ),
    );
  }
}
