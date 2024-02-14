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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MenuIcon(),
                    IconButton(
                      icon:
                          const Icon(Icons.shopping_cart_outlined, size: 24.0),
                      onPressed: () {},
                    ),
                  ],
                ),
                const Gap(20.0),

                //cruise of the day
                Container(
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
                ),

                const Gap(20.0),
                const CustomText(
                  text: "Delicious\nfood for you",
                  textAlign: TextAlign.start,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                const Gap(20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
