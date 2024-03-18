import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ActionBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const ActionBar({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Image.asset(
              'assets/images/abula_menu_icon.png',
              width: 22.0,
              height: 15.0,
            ),
          ),
          const Spacer(),
          IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.shopping_cart_outlined, size: 24.0),
            onPressed: () {
              context.goNamed('Order');
            },
          ),
        ],
      ),
    );
  }
}
