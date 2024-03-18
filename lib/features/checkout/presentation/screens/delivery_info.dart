import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';

class CheckOutDelivery extends StatefulWidget {
  const CheckOutDelivery({super.key});

  @override
  State<CheckOutDelivery> createState() => _CheckOutDeliveryState();
}

class _CheckOutDeliveryState extends State<CheckOutDelivery> {
  int selectedValue = 1;

  void oncH(int? value) {
    setState(() {
      selectedValue = value!;
    });
  }

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
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffEDEDED),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20.0),
        color: const Color(0xffEDEDED),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'Delivery',
                fontSize: 34.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
              const Gap(30.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Address details',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  CustomText(
                    text: 'change',
                    fontSize: 15.0,
                    fontFamily: 'Poppins',
                    color: Color(0xffF47B0A),
                  ),
                ],
              ),
              const Gap(10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Shotayo Boluwatife',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    Gap(10),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    CustomText(
                      text: 'Hadassah residence, Wesco Estate, FUTA.',
                      fontSize: 15,
                    ),
                    Gap(10),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    CustomText(
                      text: '+234 9060832641',
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              const Gap(30),
              const Gap(30),
              const CustomText(
                text: 'Delivery Method',
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              const Gap(10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio<int>(
                          value: 1,
                          groupValue: selectedValue,
                          onChanged: oncH,
                          activeColor: const Color(0xffF47B0A),
                        ),
                        const CustomText(
                          text: 'Door Delivery',
                          fontSize: 15,
                        )
                      ],
                    ),
                    const Gap(10.0),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio<int>(
                          value: 2,
                          groupValue: selectedValue,
                          onChanged: oncH,
                          activeColor: const Color(0xffF47B0A),
                        ),
                        const CustomText(
                          text: 'Pick Up',
                          fontSize: 15,
                        )
                      ],
                    ),
                    const Gap(20.0),
                  ],
                ),
              ),
              const Gap(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(text: 'Total', fontSize: 15,),
                  CustomText(text: '6,750', fontSize: 24, fontWeight: FontWeight.w500,),
                ],
              ),
              const Gap(20),
              AppButton(
                  onPressed: () {},
                  text: 'Proceed to Payment'),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
