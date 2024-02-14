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
      padding: const EdgeInsets.only(top: 16),
      color: Colors.transparent,
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            physics: const ClampingScrollPhysics(),
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
    return SizedBox(
      child: Column(
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
          const Expanded(
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  FoodOnDisplay(),
                  FoodOnDisplay(
                    foodName: 'Pounded Yam',
                    price: 400,
                    imageUrl:
                        'https://www.afrisian.co.uk/cdn/shop/files/PoundedYam_400x.png?v=1693217895',
                  ),
                  FoodOnDisplay(
                    foodName: 'Eba',
                    price: 300,
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0foFMPPJOIZNi0MxAZoxGsIxGUbDE_mrtbmWAYjrA6DuMyjbo4_TKHBr7dC356alR-AU&usqp=CAU',
                  ),
                  FoodOnDisplay(
                    foodName: 'Fufu',
                    imageUrl: 'https://www.shutterstock.com/image-photo/pounded-yam-fufu-tuwo-traditional-600nw-1409516018.jpg',
                  ),
                  FoodOnDisplay(
                    foodName: 'Semo',
                    imageUrl: 'https://www.shutterstock.com/image-photo/pounded-yam-fufu-tuwo-traditional-600nw-1409516018.jpg',
                  ),
                  FoodOnDisplay(
                    foodName: 'Pupuru',
                    imageUrl: 'https://www.shutterstock.com/image-photo/pounded-yam-fufu-tuwo-traditional-600nw-1409516018.jpg',
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
