import 'package:flutter/material.dart';

import '../utils/assets/assets.dart';
import '../utils/constant/decoration/decoration_constant.dart';
import '../utils/constant/widgetConstant/constant.dart';

class CustomCardList extends StatelessWidget {
  const CustomCardList(
      {Key? key,
      this.cellChange,
      this.dashBoardItem,
      this.child,
      required this.dataLists,
      this.tracker,
      this.onOpenButtonPressed,
      this.style,
      this.columnValue,
      this.listOfColumns})
      : super(key: key);
  final Function(String category)? cellChange;
  final Function(int index)? onOpenButtonPressed;
  final Widget? child;
  final List<DashBoardItem>? dashBoardItem;
  final ButtonStyle? style;
  final List<String>? columnValue;
  final List<Map<String, String>>? listOfColumns;
  final List? dataLists;
  final String? tracker;

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: dataLists?.length ?? 3,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const ImageIcon(
                       size: 80,
                      AssetImage(
                        Assets.landingPageCardIcon,
                      ),
                      color: Color(0xFF1AA955),
                    ),
                    const SizedBox(
                      width: 0,
                    ),
                    Text(
                      dataLists![index].toString(),
                      style: cardTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 5,
        ),
      ),
    );
  }
}
