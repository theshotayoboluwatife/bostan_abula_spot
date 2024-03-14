import 'package:flutter/material.dart';

import '../../../../widgets/custom_text.dart';

class CheckOutDelivery extends StatefulWidget {
  const CheckOutDelivery({super.key});

  @override
  State<CheckOutDelivery> createState() => _CheckOutDeliveryState();
}

class _CheckOutDeliveryState extends State<CheckOutDelivery> {
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
          text: 'Checkout',
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffEDEDED),
        elevation: 0.0,
      ),
      body: Container(),
    );
  }
}
