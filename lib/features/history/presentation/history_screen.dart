import 'package:AbulaBostan/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffEDEDED),
        child: const Center(
          child: CustomText(
            text: 'History Screen',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
