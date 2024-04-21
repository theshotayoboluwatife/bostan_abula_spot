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
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 24,
          ),
          const Gap(6),
          CustomText(
            text: label,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
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
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 30.0, right: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileAction(
            label: 'Profile',
            icon: Icons.person_2_rounded,
          ),
          const Gap(30),
          const ProfileAction(
            label: 'History',
            icon: Icons.history,
          ),
          const Gap(30),
          const ProfileAction(
            label: 'Offers and Promo',
            icon: Icons.local_offer_outlined,
          ),
          const Gap(30),
          const ProfileAction(
            label: 'Refer and Earn',
            icon: Icons.share_sharp,
          ),
          const Gap(30),
          const ProfileAction(
            label: 'Contact Us',
            icon: Icons.chat,
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Sign-out',
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_outlined,
                  size: 20,
                ),
                color: Colors.white,
              ),
            ],
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
