import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../widgets/custom_text.dart';

List<bool> selectedAuthType = [true, false];

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffEDEDED),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Brand logo and Page Indicator
                Stack(
                  children: [
                    //Brand logo
                    Container(
                      width: double.infinity,
                      height: screenSize.height * 0.45,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/brand_identity/abulaSpotLagos.png',
                        width: 150,
                        height: 162,
                      ),
                    ),

                    //Page indicator
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                            2,
                            (index) => buildAuthActionTab(index, screenSize),
                          ),
                        ),

                    ),
                  ],
                ),

                //Login and SignUp Form
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //method to build build page indicator
  Widget buildAuthActionTab(int index, Size size) {
    final String authTypeText = ['Login', 'Sign-up'][index];
    bool isSelected = selectedAuthType[index];

    return SizedBox(
      child: InkWell(
        onTap: () {
          setState(() {
            for (int i = 0; i < 2; i++) {
              selectedAuthType[i] = false;
            }
            selectedAuthType[index] = true;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: authTypeText,
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            const Gap(10),
            SizedBox(
              height: 3,
              width: size.width * 0.28,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Divider(
                  thickness: 3.0,
                  color:
                      isSelected ? const Color(0xffFA4A0C) : Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
