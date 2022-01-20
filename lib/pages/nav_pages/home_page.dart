import 'package:flutter/material.dart';
import 'package:travel_app/constants/colors.dart';
import 'package:travel_app/widgets/carousel/image_carousel.dart';
import 'package:travel_app/widgets/misc/circle_tab_indicator.dart';
import 'package:travel_app/widgets/typography/heading.dart';
import 'package:travel_app/widgets/typography/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List placeList = [
    // todo: add pictures
    'mountain.jpeg',
    'mountain.jpeg',
    'mountain.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Center(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header icon + profile photo
            Container(
              padding: const EdgeInsets.only(
                top: 70,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black54,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // "Discover" heading
            Container(
              margin: const EdgeInsets.only(
                top: 40,
                bottom: 30,
                left: 20,
              ),
              child: HeadingBoldText(text: 'Discover'),
            ),
            // Tabs
            Column(
              children: [
                // Tab bar
                Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    indicator: const CircleTabIndicator(
                      color: AppColors.mainColor,
                      radius: 3,
                    ),
                    tabs: const [
                      Tab(text: 'Places'),
                      Tab(text: 'Inspiration'),
                      Tab(text: 'Emotions'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ImageCarousel(list: placeList),
                      const Center(child: Text('Inspiration carousel')),
                      const Center(child: Text('Emotions carousel')),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeadingBoldText(text: 'Explore more', size: 22,),
                      AppText(text: 'See all', color: AppColors.mainColor,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
