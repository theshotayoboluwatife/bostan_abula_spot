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
          onPressed: () {},
        ),
        title: const CustomText(
          text: 'My Profile',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20.0),
        color: const Color(0xffEDEDED),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const UserProfileInfo(),
              buildPaymentMethods()
            ],
          ),
        ),
      ),
    );
  }

  Column buildPaymentMethods() {
    return Column(
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
                    alignment: Alignment.center,
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
                            ),
                            PaymentMethod(
                              paymentMethod: 'Card',
                              iconData: Icons.account_balance_outlined,
                              color: const Color(0xffEB4796),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio<int>(
                              value: 2,
                              groupValue: selectedValue,
                              onChanged: oncH,
                            ),
                            PaymentMethod(
                              paymentMethod: 'Bank account',
                              iconData: Icons.account_balance_outlined,
                              color: const Color(0xffEB4796),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio<int>(
                              value: 3,
                              groupValue: selectedValue,
                              onChanged: oncH,
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0), color: color),
          child: paymentMethod == 'Paypal'
              ? Image.asset('assets/images/cib_paypal.png')
              : Icon(
                  iconData,
                  color: Colors.white,
                ),
        ),
        CustomText(
          text: paymentMethod!,
          fontSize: 14,
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
      children: [
        const Gap(30),
        const CustomText(
          text: 'Information',
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        const Gap(10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          alignment: Alignment.center,
          child: Row(
            children: [
              Image.asset(width: 60.0, height: 60.0, ''),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Shotayo Boluwatife',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: 'shotayobolu@gmail.com',
                    fontSize: 13,
                  ),
                  CustomText(
                    text: 'Hadassah residence, Wesco Estate, FUTA.',
                    fontSize: 13,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
