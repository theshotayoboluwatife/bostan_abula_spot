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
        color: const Color(0xffEDEDED),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: CustomText(
                  text: 'Make your order',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FoodComboDetailsContainer(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodComboDetailsContainer extends StatelessWidget {
  const FoodComboDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black,
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [DishCounter(), NewDishButton()],
          ),
          Gap(12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: 'N1,250',
                color: Colors.white,
              ),
              FoodComboCheckOutButton()
            ],
          ),
        ],
      ),
    );
  }
}

class FoodComboCheckOutButton extends StatelessWidget {
  const FoodComboCheckOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: "Checkout",
            color: Colors.white,
          ),
          Gap(6),
          Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
          )
        ],
      ),
      onTap: () {},
    );
  }
}

class NewDishButton extends StatelessWidget {
  const NewDishButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: "New Dish",
            color: Colors.white,
          ),
          Gap(4),
          Icon(
            Icons.add,
            color: Colors.white,
          )
        ],
      ),
      onTap: () {},
    );
  }
}

class DishCounter extends StatelessWidget {
  const DishCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dish_icon.png',
          width: 22,
          height: 22,
          color:
              // Colors.white,
              const Color(0xffFA4A0C),
        ),
        const Gap(6),
        const CustomText(
          text: 'x2',
          color: Colors.white,
        )
      ],
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
