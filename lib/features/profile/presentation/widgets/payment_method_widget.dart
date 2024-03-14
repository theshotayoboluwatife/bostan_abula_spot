import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class PaymentMethod extends StatelessWidget {
  final String? paymentMethod;
  IconData? iconData;
  Color? color;

  PaymentMethod(
      {super.key,
        required this.paymentMethod,
        required this.color,
        this.iconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: color),
          child: paymentMethod == 'Paypal'
              ? Image.asset(
            'assets/images/cib_paypal.png',
            width: 20,
            height: 20,
          )
              : Icon(
            iconData,
            size: 20,
            color: Colors.white,
          ),
        ),
        const Gap(10),
        CustomText(
          text: paymentMethod!,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}