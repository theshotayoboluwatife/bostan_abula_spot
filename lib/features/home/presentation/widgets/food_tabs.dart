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
      height: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Colors.transparent,
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text:  'Swallow'),
              Tab(text:  'Soup'),
              Tab(text: 'Meat'),
              Tab(text: 'Tab 2'),
              Tab(text:  'Sauce'),
              Tab(text:  'Drinks'),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Content for Tab 1
                Container(
                  alignment: Alignment.center,
                  child: const Text("Tab 1 Content"),
                ),
                // Content for Tab 2
                Container(
                  alignment: Alignment.center,
                  child: const Text("Tab 2 Content"),
                ),
                // Add more content for additional tabs
              ],
            ),
          ),
        ],
      ),
    );
  }
}
