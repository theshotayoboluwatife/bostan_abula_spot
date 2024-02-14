import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class CruiseBanner extends StatelessWidget {
  const CruiseBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.5),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Why did the tomato turn red?",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          const Gap(10),
          GestureDetector(
            onTap: () {
              // Handle interaction if needed
            },
            child: const CustomText(
              text: "Tap here for the punchline!",
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
