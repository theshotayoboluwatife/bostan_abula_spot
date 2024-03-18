import 'package:AbulaBostan/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ReferEarnScreen extends StatelessWidget {
  const ReferEarnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Refer and Earn'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffEDEDED),
        child: const Center(
          child: CustomText(
            text: 'Refer and Earn Screen',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
