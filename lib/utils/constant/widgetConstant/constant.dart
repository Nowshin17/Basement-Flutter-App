import 'package:flutter/material.dart';

import '../colors/color.dart';
import '../decoration/decoration_constant.dart';
import '../numberConstant/numberConstant.dart';

const h1TextStyle =
    TextStyle(fontSize: 26, fontWeight: FontWeight.w500, fontFamily: 'Poppins');

const boldHeaderTextStyle = TextStyle(
    fontSize: 19,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');
const boldHeaderBlackTextStyle = TextStyle(
    fontSize: 19,
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');
const normalHeaderTextStyle = TextStyle(
    fontSize: 18,
    // color: Colors.black87,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');
const whiteBoldHeaderTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.green,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');

const boldNormalTextStyle = TextStyle(
    fontSize: 17,
    // color: Colors.black87,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');
const normalTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins');
const normalBlackTextStyle = TextStyle(
    fontSize: 17,
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins');
final smallGrayTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.grey[700],
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins');
final normalGrayTextStyle = TextStyle(
    fontSize: 17,
    color: Colors.grey[700],
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins');
const boldDetailsTitleTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: 'Poppins');
final italicGrayTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.grey[700],
  //fontWeight: FontWeight.w200,
  fontStyle: FontStyle.italic,
  // fontFamily: 'Poppins'
);
const normalWhiteTextStyle = TextStyle(
    fontSize: 17,
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins');
const h1WhiteTextStyle = TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');
const underlineNormalTextStyle = TextStyle(
    fontSize: 19,
    color: Colors.blue,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
    fontFamily: 'Poppins');

const detailsHeaderTextStyle =
    TextStyle(fontSize: 19, fontWeight: FontWeight.w700, fontFamily: 'Poppins');
const detailsSemiHeaderTextStyle =
    TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontFamily: 'Poppins');
const detailsNormalGreyTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');
const clickableAccountNameTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.blueAccent,
    //decoration: TextDecoration.underline,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');

ButtonStyle buttonStyleContinue = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.green),
  fixedSize: MaterialStateProperty.all(
    const Size(
      400,
      60,
    ),
  ),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: const BorderSide(color: Colors.grey),
    ),
  ),
);
SizedBox verticalGap() {
  return const SizedBox(
    height: 20,
  );
}

SizedBox shortVerticalGap() {
  return const SizedBox(
    height: 10,
  );
}

SizedBox horizontalGap() {
  return const SizedBox(
    width: 20,
  );
}

SizedBox shortHorizontalGap() {
  return const SizedBox(
    width: 10,
  );
}

const emailTextStyle = TextStyle(fontFamily: 'Poppins', fontSize: 15);

List<DashBoardItem> dashBoardItemList = [
  DashBoardItem(
    itemName: "Dashboard",
    icon: Icons.dashboard,
  ),
  DashBoardItem(
    itemName: "Project Log",
    icon: Icons.list_rounded,
  ),
  DashBoardItem(
    itemName: "Lead",
    icon: Icons.groups,
  ),
  DashBoardItem(
    itemName: "Meeting",
    icon: Icons.meeting_room_sharp,
  ),
  // DashBoardItem(
  //   itemName: "Account",
  //   icon: Icons.account_balance,
  // ),
  // DashBoardItem(
  //   itemName: "Contact",
  //   icon: Icons.contacts,
  // ),
  DashBoardItem(
    itemName: 'Task',
    icon: Icons.add_task,
  ),
  DashBoardItem(
    itemName: "Call Log",
    icon: Icons.add_ic_call,
  ),
  DashBoardItem(
    itemName: "CRM Log",
    icon: Icons.playlist_add_check,
  ),
];

class DashBoardItem {
  DashBoardItem({required this.icon, required this.itemName});

  final String itemName;

  final IconData icon;
}

List<DashBoardItem> projectItemList = [
  DashBoardItem(
    itemName: "Project",
    icon: Icons.ac_unit,
  ),
  DashBoardItem(
    itemName: "Activity Log",
    icon: Icons.ac_unit,
  ),
  DashBoardItem(
    itemName: "Portals",
    icon: Icons.ac_unit,
  ),
  DashBoardItem(
    itemName: "Assist",
    icon: Icons.ac_unit,
  ),
];

List<DashBoardItem> crmItemList = [
  DashBoardItem(
    itemName: "Accounts",
    icon: Icons.ac_unit,
  ),
  DashBoardItem(
    itemName: "Contact",
    icon: Icons.ac_unit,
  ),
  DashBoardItem(
    itemName: "",
    icon: Icons.ac_unit,
  ),
  DashBoardItem(
    itemName: "Activity",
    icon: Icons.ac_unit,
  ),
  DashBoardItem(
    itemName: "Tender Info",
    icon: Icons.ac_unit,
  ),
];

List<DashBoardItem> inventoryItemList = [
  DashBoardItem(
    itemName: "Return Product",
    icon: Icons.ac_unit,
  ),
  DashBoardItem(
    itemName: "Manufacturing Unit",
    icon: Icons.ac_unit,
  ),
];
List<Widget> curveNavbarItemList = [
  Container(
    height: 50,
    child: Column(
      children: const [
        Icon(Icons.home_filled,
            color: Color(0xFF1AA955),
            size: NumberConstant.bottonNavbarIconSize),
        Text(
          "Home",
          style: bottomNavbarTextStyle,
        )
      ],
    ),
  ),
  Container(
    height: 50,
    child: Column(
      children: const [
        Icon(Icons.call,
            color: navbarHomeAndCallIconColor,
            size: NumberConstant.bottonNavbarIconSize),
        Text(
          "Help line",
          style: bottomNavbarTextStyle,
        )
      ],
    ),
  ),
  Container(
    height: 50,
    child: Column(
      children: const [
        Icon(Icons.notifications,
            color: Color(0xFF858C94),
            size: NumberConstant.bottonNavbarIconSize),
        Text(
          "Notification",
          style: bottomNavbarTextStyle,
        )
      ],
    ),
  ),
];
