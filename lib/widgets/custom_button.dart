import 'package:flutter/material.dart';

import 'custom_text.dart';

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
