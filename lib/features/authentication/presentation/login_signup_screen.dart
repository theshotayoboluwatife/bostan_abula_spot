import 'package:flutter/material.dart';

import '../../../widgets/custom_text.dart';

enum AuthType { signIn, signUp }

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

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
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/brand_identity/abulaSpotLagos.png',
                          width: 150,
                          height: 162,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            AuthActionTab(),
                            AuthActionTab(),
                          ],
                        ),
                      )
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
}

class AuthActionTab extends StatefulWidget {
  final AuthType authType;

  const AuthActionTab({Key? key, required this.authType}) : super(key: key);

  @override
  State<AuthActionTab> createState() => _AuthActionTabState();
}

class _AuthActionTabState extends State<AuthActionTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: widget.authType == AuthType.signIn ? 'Login' : 'Sign-up',
          ),
        ],
      ),
    );
  }
}
