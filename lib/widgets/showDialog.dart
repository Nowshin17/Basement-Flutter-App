import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utils/constant/widgetConstant/constant.dart';

Future<void> customShowDialog(
    {context,
    required String text,
    required Function() onPressed,
    required bool isEmail}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            children: [
              Text(text),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: onPressed,
            child: const Text(
              'হ্যাঁ',
              style: TextStyle(color: Colors.green),
            ),
          ),
          if (isEmail == false)
            TextButton(
              child: const Text(
                'না',
                style: TextStyle(color: Colors.redAccent),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
        ],
      );
    },
  );
}

Future<void> customShowDialogWithList({
  context,
  required String name,
  required List phopneNumber,
  required Icon icons,
  required Function(String phoneNumber) onPressed,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: SingleChildScrollView(
          child: SizedBox(
            height: (phopneNumber.length * 35.0) + 110,
            width: 300,
            child: Column(
              children: [
                //shortVerticalGap(),
                Text(
                  name,
                  style: detailsHeaderTextStyle,
                ),
                shortVerticalGap(),
                Container(
                    margin: const EdgeInsets.only(left: 0.0, right: 0.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 2,
                    )),
                shortVerticalGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    icons,
                    horizontalGap(),
                    const Text(
                      "Choose phone number",
                      style: detailsSemiHeaderTextStyle,
                    ),
                  ],
                ),
                verticalGap(),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: phopneNumber.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          onPressed(phopneNumber[index]);
                          Navigator.of(context).pop();
                        },
                        child: Card(
                          elevation: 0.5,
                          child: Container(
                            padding: const EdgeInsets.only(left: 50),
                            height: 30,
                            child: Text(
                              phopneNumber[index],
                              style: detailsNormalGreyTextStyle,
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<void> customShowDialogForContacts({
  context,
  required String name,
  required List contact,
  required Icon icons,
  required Function(Map selectedContact) onPressed,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: SingleChildScrollView(
          child: SizedBox(
            height: (contact.length * 82.0) + 110,
            width: 300,
            child: Column(
              children: [
                //shortVerticalGap(),
                Text(
                  name,
                  style: detailsHeaderTextStyle,
                ),
                shortVerticalGap(),
                Container(
                    margin: const EdgeInsets.only(left: 0.0, right: 0.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 2,
                    )),

                verticalGap(),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: contact.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          onPressed(contact[index]);
                          Navigator.of(context).pop();
                        },
                        child: Card(
                          elevation: 0.5,
                          child: Container(
                            padding: const EdgeInsets.only(left: 5),
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contact[index]["name"],
                                  style: detailsNormalGreyTextStyle,
                                ),
                                Text(
                                  contact[index]["designation"],
                                  style: detailsNormalGreyTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<bool?> customToast(
    {context,
    required String message,
    required Color textColor,
    required Color backgroundColor}) async {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: 16.0);
}
