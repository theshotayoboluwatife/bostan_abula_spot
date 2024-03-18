import 'package:AbulaBostan/features/home/presentation/widgets/food_tabs.dart';
import 'package:AbulaBostan/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../profile/presentation/widgets/side_nav_widgets.dart';
import '../widgets/action_bar.dart';
import '../widgets/cruise_banner.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const Drawer(
        backgroundColor: Color(0xffFA4A0C),
        child: SafeArea(
          child: SideDrawerWidget(),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffEDEDED),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ActionBar(
                  scaffoldKey: _scaffoldKey,
                ),
                const Gap(30.0),
                //cruise of the day
                const CruiseBanner(),
                const Gap(40.0),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: CustomText(
                    text: "Delicious\nfood for you!",
                    textAlign: TextAlign.start,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
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
