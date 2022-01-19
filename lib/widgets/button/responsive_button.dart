import 'package:flutter/material.dart';
import 'package:travel_app/constants/colors.dart';

class ResponsiveButton extends StatelessWidget {
  ResponsiveButton({
    Key? key,
    this.width,
    this.isResponsive = false,
  }) : super(key: key);

  bool? isResponsive;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img/button-one.png'),
        ]
      ),
    );
  }
}
