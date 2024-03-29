import 'package:AbulaBostan/features/authentication/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/custom_button.dart';
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
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30.0),
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
          TextButton(
            onPressed: () {},
            child: const CustomText(
              text: 'Forgot password?',
              color: Color(0xffFA4A0C),
            ),
          ),
          const Gap(50.0),
          AppButton(
              onPressed: () {
                context.goNamed('Home');
              },
              text: 'Login'),
          const Gap(50.0),
        ],
      ),
    );
  }
}
