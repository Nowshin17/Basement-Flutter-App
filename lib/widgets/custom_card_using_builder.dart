import 'package:flutter/material.dart';

import '../utils/constant/decoration/decoration_constant.dart';
import '../utils/constant/widgetConstant/constant.dart';

class CustomCardListForNotification extends StatelessWidget {
  const CustomCardListForNotification(
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
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: dataLists?.length ?? 3,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                margin: const EdgeInsets.all(5),
                // elevation: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 0, top: 20, right: 20, bottom: 20),
                    child: Text(
                      dataLists![index].toString(),
                      style: notificationTextStyle,
                    ),
                  ),
                ),
              ),
              // Text("Date$index", style: dateTextStyle)
            ],
          );
        },
      ),
    );
  }
}
