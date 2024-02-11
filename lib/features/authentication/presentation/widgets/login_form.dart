import 'package:AbulaBostan/features/authentication/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
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
          const Gap(10.0),
          PasswordTextField(
            controller: passwordController,
            textInputType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
