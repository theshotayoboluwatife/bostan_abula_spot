import 'package:AbulaBostan/features/home/presentation/widgets/food_on_display.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../widgets/custom_text.dart';

class FoodTabs extends StatefulWidget {
  const FoodTabs({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodTabs> createState() => _FoodTabsState();
}

late TabController _tabController;

class _FoodTabsState extends State<FoodTabs>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      padding: const EdgeInsets.all(16),
      color: Colors.transparent,
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.only(left: 0.0, right: 0.0),
            tabAlignment: TabAlignment.center,
            labelStyle:
                const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            labelColor: const Color(0xffFA4A0C),
            unselectedLabelStyle:
                const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            unselectedLabelColor: const Color(0xff9A9A9D),
            indicatorColor: const Color(0xffFA4A0C),
            isScrollable: true,
            dividerHeight: 0.5,
            dividerColor: Colors.transparent,
            tabs: const [
              Tab(text: 'Swallow'),
              Tab(text: 'Soup'),
              Tab(text: 'Meat'),
              Tab(text: 'Staple'),
              Tab(text: 'Sauce'),
              Tab(text: 'Drinks'),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                TabFoodContent(),
                TabFoodContent(),
                TabFoodContent(),
                TabFoodContent(),
                TabFoodContent(),
                TabFoodContent(), // Add more content for additional tabs
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabFoodContent extends StatelessWidget {
  const TabFoodContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            child: const CustomText(
              text: 'See more',
              fontSize: 15,
              color: Color(0xffFA4A0C),
            ),
            onPressed: () {},
          ),
        ),
        const Gap(10),
        const SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              FoodOnDisplay(),
              FoodOnDisplay(),
              FoodOnDisplay(),
            ]),
          ),
        ),
      ],
    );
  }
}
