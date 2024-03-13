import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed('UserProfile');
      },
      child: Image.asset(
        'assets/images/abula_menu_icon.png',
        width: 22.0,
        height: 15.0,
      ),
    );
  }
}
