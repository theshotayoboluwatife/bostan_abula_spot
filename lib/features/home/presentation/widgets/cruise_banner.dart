import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class CruiseBanner extends StatelessWidget {
  const CruiseBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.white),
          boxShadow: [
            BoxShadow(
              color: const Color(0xffFA4A0C).withOpacity(0.95),
              blurRadius: 2.0,
              spreadRadius: 2.0,
              offset: const Offset(0, 0),
              // Set the offset to (0, 0) for the shadow to appear on all sides
              blurStyle: BlurStyle.inner,
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
              child: CustomText(
                text: "Tap here for the punchline!",
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.deepOrange[600]?.withOpacity(0.95),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
