import 'package:flutter/material.dart';

import '../utils/constant/widgetConstant/constant.dart';

class CustomDatePicker extends StatelessWidget {
  CustomDatePicker({
    Key? key,
    required this.onTap,
    required this.Controller,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    required this.TextLebel,
    this.contactTracker,
  }) : super(key: key);
  final Function(DateTime formattedDate) onTap;
  final TextEditingController Controller;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final String TextLebel;
  bool? contactTracker = false;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.indigo,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.indigo, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      print(pickedDate);
      onTap(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (val) {
        if (contactTracker == true) {
          print("l");
        } else {
          if (val == "") {
            return "";
          }
        }
      },
      controller: Controller,
      readOnly: true,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 0,
          height: 50,
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
        labelText: TextLebel,
        labelStyle: normalTextStyle,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
      ),
      onTap: () {
        _selectDate(context);
      },
    );
  }
}
