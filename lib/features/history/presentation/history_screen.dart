import 'package:AbulaBostan/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../widgets/custom_button.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          iconSize: 20,
          onPressed: () {},
        ),
        title: const CustomText(
          text: 'History',
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffEDEDED),
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20.0),
        color: const Color(0xffEDEDED),
        child:  Center(
          child: Column(
            children: [
              const Spacer(),
              const Icon(
                Icons.today_outlined,
                size: 100,
                color: Colors.grey,
              ),
              const Gap(10),
              const CustomText(
                text: 'No history yet',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              const Gap(10),
              const CustomText(
                text: 'Press the button below to create an Order',
                fontSize: 14,
              ),
              const Spacer(),
              AppButton(
                  onPressed: () {
                    //context.goNamed('Home');
                  },
                  text: 'Order Now'),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
