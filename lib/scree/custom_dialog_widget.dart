import 'package:flutter/material.dart';
import 'package:basement_app/widgets/custom_button_widget.dart';
import '../constants/snackBar_constant.dart';
import '../widgets/custom_AppBar.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "Dialog Widget ",
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 20,
            ),
            CustomButton(
              onPressed: ()async {
             await   customShowDialog(
               context: context,
                  text: "Hello, Are you Sure?",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                );
              },
              buttonName: "Dialog",
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

Future<void> customShowDialog(
    {context,
    required String text,
    required Function() onPressed,
  }) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: onPressed,
            child: const Text(
              'Yes',
              style: TextStyle(color: Colors.green),
            ),
          ),

            TextButton(
              child: const Text(
                'No',
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
