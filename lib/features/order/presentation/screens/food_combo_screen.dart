import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class FoodComboScreen extends StatefulWidget {
  const FoodComboScreen({super.key});

  @override
  State<FoodComboScreen> createState() => _FoodComboScreenState();
}

class _FoodComboScreenState extends State<FoodComboScreen> {
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
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FoodCategoryWidget extends StatefulWidget {
  final String? foodName;
  bool isCollapsed;

  FoodCategoryWidget(
      {super.key, required this.foodName, this.isCollapsed = false});

  @override
  State<FoodCategoryWidget> createState() => _FoodCategoryWidgetState();
}

class _FoodCategoryWidgetState extends State<FoodCategoryWidget> {
  void toggleArrowIcon() {
    setState(() {
      widget.isCollapsed = !widget.isCollapsed;

    });
  }

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
                text: widget.foodName!,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              IconButton(
                icon: widget.isCollapsed
                    ? const Icon(Icons.keyboard_arrow_down_sharp)
                    : const Icon(Icons.keyboard_arrow_right_sharp),
                onPressed: () {
                  toggleArrowIcon();
                },
              )
            ],
          ),
        ),
        const Gap(8),
      ],
    );
  }
}
