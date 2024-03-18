import 'package:AbulaBostan/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffEDEDED),
        child: const Center(
          child: CustomText(
            text: 'Profile Screen',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
