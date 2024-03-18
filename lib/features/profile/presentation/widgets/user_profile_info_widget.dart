import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(10),
        const CustomText(
          text: 'Information',
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        const Gap(10),
        Container(
          width: double.infinity,
          padding:
          const EdgeInsets.only(top: 24.0, left: 20, right: 10, bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0),),
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                        'assets/images/bolu_profile_pic.jpg')),
              ),
              const Gap(10),
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Shotayo Boluwatife',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Gap(10),
                    CustomText(
                      text: 'shotayobolu@gmail.com',
                      fontSize: 13,
                    ),
                    Gap(10),
                    CustomText(
                      text: 'Hadassah residence, Wesco Estate, FUTA.',
                      fontSize: 13,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
