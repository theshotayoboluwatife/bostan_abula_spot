import 'package:flutter/material.dart';

import '../../../../widgets/custom_text.dart';

class DiscoveryWrapper extends StatefulWidget {

  const DiscoveryWrapper({
    Key? key,
  }) : super(key: key);

  @override
  State<DiscoveryWrapper> createState() => _DiscoveryWrapperState();
}

late TabController _tabController;

class _DiscoveryWrapperState extends State<DiscoveryWrapper>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    //_tabController.animateTo(widget.position ?? 0);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 27,
            color: Color.fromRGBO(250, 250, 250, 1),
          ),
        ),
        title: const CustomText(
          text: 'utilProvider.categoryTexts[_tabController.index]',
          color: Color.fromRGBO(255, 255, 255, 0.70),
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: 'poppins',
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        bottom: TabBar(
          controller: _tabController,
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.only(left: 0, right: 0),
          tabAlignment: TabAlignment.center,
          indicatorColor: const Color(0xff3F37C9),
          isScrollable: true,
          dividerHeight: 0.5,
          dividerColor: const Color.fromRGBO(153, 153, 153, 0.70),
          tabs: List.generate(
            6,
            (index) => const Tab(
              child: CustomText(
                text: 'utilProvider.categoryTexts[index]',
                color: Color.fromRGBO(255, 255, 255, 0.70),
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: 'poppins',
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: TabBarView(
          controller: _tabController,
          children: const [
            ///Stories
            //StoriesSccreen(),

            ///Meditation
            //MeditationScreen(),

            ///Quotes
            //QuotesScreen(),

            ///Affirmation
            //AffirmationScreen()
          ],
        ),
      ),
    );
  }
}
