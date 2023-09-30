import 'package:flutter/material.dart';

class Library {
  static bool isSnackbarActive1 = false;
  static void createSnackBar(String message, BuildContext context) {
    if (isSnackbarActive1 == false) {
      isSnackbarActive1 = true;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
            content: Text(message.toString()),
            backgroundColor: Colors.deepPurpleAccent,
          ))
          .closed
          .then((SnackBarClosedReason reason) {
        isSnackbarActive1 = false;
      });
    }
  }
}
