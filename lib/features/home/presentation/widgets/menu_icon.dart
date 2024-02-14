import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Image.asset(
        'assets/images/abula_menu_icon.png',
        width: 22.0,
        height: 15.0,
      ),
    );
  }
}
