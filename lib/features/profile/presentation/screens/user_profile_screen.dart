import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
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
          text: 'My Profile',
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
        padding: const EdgeInsets.all(20.0),
        color: const Color(0xffEDEDED),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [const UserProfileInfo(), buildPaymentMethods()],
          ),
        ),
      ),
    );
  }

  Column buildPaymentMethods() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(30),
        const CustomText(
          text: 'Payment Method',
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        const Gap(10),
        Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<int>(
                      value: 1,
                      groupValue: selectedValue,
                      onChanged: oncH,
                      activeColor: const Color(0xffF47B0A),
                    ),
                    PaymentMethod(
                      paymentMethod: 'Card',
                      iconData: Icons.credit_card,
                      color: const Color(0xffF47B0A),
                    ),
                  ],
                ),
                const Gap(20.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<int>(
                      value: 2,
                      groupValue: selectedValue,
                      onChanged: oncH,
                      activeColor: const Color(0xffF47B0A),
                    ),
                    PaymentMethod(
                      paymentMethod: 'Bank account',
                      iconData: Icons.account_balance_outlined,
                      color: const Color(0xffEB4796),
                    ),
                  ],
                ),
                const Gap(20.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<int>(
                      value: 3,
                      groupValue: selectedValue,
                      onChanged: oncH,
                      activeColor: const Color(0xffF47B0A),
                    ),
                    PaymentMethod(
                      paymentMethod: 'Paypal',
                      color: const Color(0xff0038FF),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}

class PaymentMethod extends StatelessWidget {
  final String? paymentMethod;
  IconData? iconData;
  Color? color;

  PaymentMethod(
      {super.key,
      required this.paymentMethod,
      required this.color,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: color),
          child: paymentMethod == 'Paypal'
              ? Image.asset(
                  'assets/images/cib_paypal.png',
                  width: 20,
                  height: 20,
                )
              : Icon(
                  iconData,
                  size: 20,
                  color: Colors.white,
                ),
        ),
        const Gap(10),
        CustomText(
          text: paymentMethod!,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(10),
        const CustomText(
          text: 'Information',
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        const Gap(10),
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 24.0, left: 20, right: 10, bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                        'assets/images/bolu_profile_pic.jpg')),
              ),
              const Gap(10),
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Shotayo Boluwatife',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Gap(10),
                    CustomText(
                      text: 'shotayobolu@gmail.com',
                      fontSize: 13,
                    ),
                    Gap(10),
                    CustomText(
                      text: 'Hadassah residence, Wesco Estate, FUTA.',
                      fontSize: 13,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
