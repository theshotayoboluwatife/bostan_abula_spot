import 'package:flutter/material.dart';

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
            labelStyle: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),
            unselectedLabelColor: const Color(0xff9A9A9D),
            indicatorColor: const Color(0xffFA4A0C),
            isScrollable: true,
            dividerHeight: 0.5,
            dividerColor: const Color.fromRGBO(153, 153, 153, 0.70),
            tabs: const [
              Tab(text:  'Swallow'),
              Tab(text:  'Soup'),
              Tab(text: 'Meat'),
              Tab(text: 'Staple'),
              Tab(text:  'Sauce'),
              Tab(text:  'Drinks'),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const Text("Tab 1 Content"),
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text("Tab 2 Content"),
                ),
                Container(),
                Container(),
                Container(),
                Container(),
                // Add more content for additional tabs
              ],
            ),
          ),
        ],
      ),
    );
  }
}
