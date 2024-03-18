import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/custom_text.dart';

class ProfileAction extends StatelessWidget {
  final String label;
  final IconData icon;

  const ProfileAction({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          const Gap(6),
          CustomText(
            text: label,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ],
      ),
      onTap: () => context.goNamed('route'),
    );
  }
}

class SideDrawerWidget extends StatelessWidget {
  const SideDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, left: 32.0, right: 24.0),
      child: Column(
        children: [
          ProfileAction(
            label: 'Profile',
            icon: Icons.person_2_rounded,
          ),
          ProfileAction(
            label: 'History',
            icon: Icons.person_2_rounded,
          ),
          ProfileAction(
            label: 'Offers and Promo',
            icon: Icons.person_2_rounded,
          ),
          ProfileAction(
            label: 'Refer and Earn',
            icon: Icons.person_2_rounded,
          ),
          ProfileAction(
            label: 'Contact Us',
            icon: Icons.person_2_rounded,
          ),
        ],
      ),
    );
  }
}
