import 'package:flutter/material.dart';
import 'package:travel_app/constants/colors.dart';
import 'package:travel_app/widgets/button/responsive_button.dart';
import 'package:travel_app/widgets/typography/heading.dart';
import 'package:travel_app/widgets/typography/text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late List data;

  @override
  void initState() {
    super.initState();
    // fetch data from server

    data = [
      {
        'title': 'Trips',
        'subtitle': 'Mountain',
        'image': 'assets/img/welcome-one.png',
        'description':
            'Mountain hikes give you an incredible sense of freedom alogn with endurance test.',
      },
      {
        'title': 'Hikes',
        'subtitle': 'Higher',
        'image': 'assets/img/welcome-two.png',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'title': 'Beautiful',
        'subtitle': 'Landscapes',
        'image': 'assets/img/welcome-three.png',
        'description':
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data.length,
        itemBuilder: (_, indexItem) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: data[indexItem]['image'].contains('http')
                    ? Image.network(data[indexItem]['image']).image
                    : Image.asset(data[indexItem]['image']).image,
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingBoldText(text: data[indexItem]['title']),
                      AppText(
                        text: data[indexItem]['subtitle'],
                        size: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 40),
                        width: 250,
                        child: AppText(
                          text: data[indexItem]['description'],
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      ResponsiveButton()
                    ],
                  ),
                  Column(
                    children: List.generate(data.length, (indexDot) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: indexItem == indexDot ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: indexItem == indexDot
                              ? AppColors.mainColor
                              : AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
