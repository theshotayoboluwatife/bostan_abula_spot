import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../widgets/custom_text.dart';

enum AuthType { signIn, signUp }

List<bool> selectedAuthType = List.generate(2, (index) => false);

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
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: screenSize.height * 0.24,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Spacer(),
                      Image.asset(
                          'assets/images/brand_identity/abulaSpotLagos.png',
                          width: 150,
                          height: 162,
                        ),

                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            2,
                            (index) => buildAuthActionTab(index),
                          ),
                        ),

                    ],
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAuthActionTab(int index) {
    final String authTypeText = ['Login', 'Sign-up'][index];
    bool isSelected = selectedAuthType[index];

    return SizedBox(
      child: GestureDetector(
        onTap: () {
          setState(() {
            for (int i = 0; i < 2; i++) {
              selectedAuthType[i] = false;
            }
            selectedAuthType[index] = true;
          });
        },
        child: Column(
          children: [
            CustomText(
              text: authTypeText[index],
              color: Colors.black,
            ),
            const Gap(20.0),
            Divider(
              height: 2,
              thickness: 8.0,
              color: isSelected ? const Color(0xffFA4A0C) : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
