import 'package:AbulaBostan/features/authentication/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30.0),
          CustomText(
            text: 'Name',
            fontSize: 15,
            color: Colors.black.withOpacity(0.5),
          ),
          const Gap(10.0),
          EmailTextField(
            controller: nameController,
            textInputType: TextInputType.emailAddress,
          ),
          const Gap(20),
          CustomText(
            text: 'Email address',
            fontSize: 15,
            color: Colors.black.withOpacity(0.5),
          ),
          const Gap(10.0),
          EmailTextField(
            controller: emailController,
            textInputType: TextInputType.emailAddress,
          ),
          const Gap(20.0),
          CustomText(
            text: 'Password',
            fontSize: 15,
            color: Colors.black.withOpacity(0.5),
          ),
          const Gap(10.0),
          PasswordTextField(
            controller: passwordController,
            textInputType: TextInputType.visiblePassword,
          ),
          const Gap(20.0),
          CustomText(
            text: 'Confirm password',
            fontSize: 15,
            color: Colors.black.withOpacity(0.5),
          ),
          const Gap(10.0),
          PasswordTextField(
            controller: cPasswordController,
            textInputType: TextInputType.visiblePassword,
          ),
          const Gap(50.0),
          AppButton(
              onPressed: () {
                context.goNamed('Home');
              },
              text: 'Sign Up'),
          const Gap(50.0),
        ],
      ),
    );
  }
}
