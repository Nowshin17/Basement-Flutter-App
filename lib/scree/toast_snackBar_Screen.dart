import 'package:basement_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constants/snackBar_constant.dart';
import '../widgets/custom_AppBar.dart';

class ToastSnackBarScreen extends StatelessWidget {
  const ToastSnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "Toast & SnackBar ",
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "This is a Toast message",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    backgroundColor: Colors.green,
                    fontSize: 16.0,
                  );
                },
                buttonName: "Toast",
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(ErrorHandlerMessage.noInternetSnackBar);
                },
                buttonName: "SnackBar",
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
