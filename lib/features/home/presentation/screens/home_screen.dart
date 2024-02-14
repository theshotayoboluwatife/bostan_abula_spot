import 'package:AbulaBostan/features/home/presentation/widgets/food_tabs.dart';
import 'package:AbulaBostan/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/action_bar.dart';
import '../widgets/cruise_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffEDEDED),
        child: const SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ActionBar(),
                Gap(30.0),
                //cruise of the day
                Padding(
                    padding: EdgeInsets.only(left: 2, right: 16),
                    child: CruiseBanner()),
                Gap(40.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: CustomText(
                    text: "Delicious\nfood for you!",
                    textAlign: TextAlign.start,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Gap(20.0),
                FoodTabs()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
