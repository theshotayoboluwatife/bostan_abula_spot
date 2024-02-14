import 'package:AbulaBostan/features/home/presentation/widgets/food_tabs.dart';
import 'package:AbulaBostan/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/action_bar.dart';
import '../widgets/cruise_banner.dart';
import '../widgets/menu_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20.0),
        color: const Color(0xffEDEDED),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ActionBar(),
                const Gap(30.0),
                //cruise of the day
                const CruiseBanner(),
                const Gap(40.0),
                const CustomText(
                  text: "Delicious\nfood for you",
                  textAlign: TextAlign.start,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                const Gap(20.0),
                const FoodTabs()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


