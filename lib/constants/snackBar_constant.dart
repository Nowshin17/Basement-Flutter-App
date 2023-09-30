import 'package:flutter/material.dart';

class ErrorHandlerMessage {
  static SnackBar noInternetSnackBar = const SnackBar(
    backgroundColor: Colors.green,
    elevation: 2,
    content: Text(
      "Welcome into Flutter ",
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    ),
  );
}
