import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bostan Abula Spot'),
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text('Login SignUp'),
        ),
      ),
    );
  }
}
