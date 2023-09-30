import 'package:flutter/material.dart';

import '../utils/constant/widgetConstant/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.appBarTitle}) : super(key: key);
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        appBarTitle,
        textAlign: TextAlign.center,
        style: whiteBoldHeaderTextStyle,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
