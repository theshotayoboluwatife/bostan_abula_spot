import 'package:AbulaBostan/features/home/presentation/widgets/food_tab_wrapper.dart';
import 'package:AbulaBostan/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                children: [
                  const Gap(20),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuIcon(),
                      IconButton(icon: Icon(Icons.shopping_cart_outlined, size: 24,),
                        onPressed: () {},)
                    ],
                  ),
                  //cruise of the day
                  const CustomText(
                    text:
                    "Which one worse pass:\nNo Internet\nZero A/C Balance\nLow Battery?",
                    fontFamily: 'DM Sans',
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),

                  //tabs for food and drinks
                  Container(
                      width: double.infinity,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.4,
                      padding: const EdgeInsets.all(2.0),
                      child:
                      const DiscoveryWrapper()
                  )

                ],
              ),
            ),
          )),
    );
  }
}
