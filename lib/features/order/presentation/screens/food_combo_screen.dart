import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class FoodComboScreen extends StatelessWidget {
  const FoodComboScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: const Color(0xffEDEDED),
        child: const SafeArea(
          child: Column(
            children: [
              CustomText(
                text: 'Make your order',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              Gap(20),
              FoodCategoryWidget(
                foodName: 'Swallow',
              ),
              FoodCategoryWidget(
                foodName: 'Soup',
              ),
              FoodCategoryWidget(
                foodName: 'Meat',
              ),
              FoodCategoryWidget(
                foodName: 'Staple',
              ),
              FoodCategoryWidget(
                foodName: 'Sauce',
              ),
              FoodCategoryWidget(
                foodName: 'Drinks',
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class FoodCategoryWidget extends StatelessWidget {
  final String? foodName;

  const FoodCategoryWidget({
    super.key,
    required this.foodName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: foodName!,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                onPressed: () {},
              )
            ],
          ),
        ),
        const Gap(16),
      ],
    );
  }
}
