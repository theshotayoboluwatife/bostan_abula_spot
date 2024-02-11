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
        color: const Color(0xffEDEDED),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: screenSize.height * 0.45,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Image.asset(
                        'assets/images/brand_identity/abulaSpotLagos.png',
                        width: 150,
                        height: 162,
                      ),
                      const Spacer(),
                      Expanded(
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
                ),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
          children: [
            CustomText(
              text: authTypeText,
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            const Gap(2.0),
            SizedBox(
              height: 3,
              width: size.width*0.28,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Divider(
                  thickness: 3.0,
                  color: isSelected ? const Color(0xffFA4A0C) : Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
