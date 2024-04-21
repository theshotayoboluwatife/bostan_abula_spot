import 'package:flutter/material.dart';
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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Make your order',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const Gap(20),
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
  bool isCollapsed;

  void toggleArrowIcon() {
    isCollapsed = !isCollapsed;
  }

  FoodCategoryWidget(
      {super.key, required this.foodName, this.isCollapsed = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
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
                icon: isCollapsed
                    ? const Icon(Icons.keyboard_arrow_down_sharp)
                    : const Icon(Icons.keyboard_arrow_up_sharp),
                onPressed: () => toggleArrowIcon,
              )
            ],
          ),
        ),
        const Gap(8),
      ],
    );
  }
}
