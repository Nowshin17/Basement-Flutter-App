import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../utils/constant/colors/color.dart';

class CustomPercentageIndicator extends StatelessWidget {
  const CustomPercentageIndicator(
      {Key? key, this.onAnimationEnd, required this.percentage})
      : super(key: key);
  final void Function()? onAnimationEnd;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width - 20,
      animation: true,
      lineHeight: 15.0,
      animationDuration: 2500,
      percent: percentage,
      onAnimationEnd: onAnimationEnd,
      // center: const Text("100.0%"),
      barRadius: const Radius.circular(10),

      progressColor: percentageProgressIndicatorCorlor,
    );
  }
}
