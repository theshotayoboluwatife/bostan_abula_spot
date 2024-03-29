import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmailTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;

  const EmailTextField({
    super.key,
    required this.controller,
    required this.textInputType,
  });

  @override
  State<EmailTextField> createState() => _EmailTextField();
}

class _EmailTextField extends State<EmailTextField> {
  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: const TextStyle(color: Colors.black),
      keyboardType: widget.textInputType,
      autofillHints: const [AutofillHints.email],
      decoration: const InputDecoration(
        isDense: true,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFA4A0C), width: 2),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;

  const PasswordTextField({
    super.key,
    required this.controller,
    required this.textInputType,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField>
    with SingleTickerProviderStateMixin {
  bool isVisible = false;

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: const TextStyle(color: Colors.black),
      keyboardType: widget.textInputType,
      obscureText: !isVisible,
      decoration: InputDecoration(
        isDense: true,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: FaIcon(
              isVisible ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
              color: const Color(0xffFA4A0C),
              size: 20,
            ),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFA4A0C), width: 2),
        ),
      ),
    );
  }
}
