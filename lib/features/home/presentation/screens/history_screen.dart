import 'package:flutter/material.dart';

import '../widgets/menu_icon.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const MenuIcon(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.receipt_long))
        ],

      ),
      body: Container(
        
      ),
    );
  }
}

