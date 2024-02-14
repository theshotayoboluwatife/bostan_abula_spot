import 'package:flutter/material.dart';

import 'menu_icon.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const MenuIcon(),
          IconButton(
            icon:
                const Icon(Icons.shopping_cart_outlined, size: 24.0),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
