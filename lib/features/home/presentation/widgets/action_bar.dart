import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'menu_icon.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const MenuIcon(),
          Spacer(),
          IconButton(
            padding: EdgeInsets.zero,
            icon:
                const Icon(Icons.shopping_cart_outlined, size: 24.0),
            onPressed: () {
              context.goNamed('Order');
            },
          ),
        ],
      ),
    );
  }
}
