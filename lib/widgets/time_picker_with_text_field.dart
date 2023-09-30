import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({Key? key}) : super(key: key);

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  TextEditingController timeinput = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );

    if (pickedTime != null) {
      print(pickedTime.format(context)); //output 10:51 PM
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime); //output 1970-01-01 22:53:00.000
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime); //output 14:59:00

      setState(() {
        timeinput.text = formattedTime; //set the value of text field.
      });
    } else {
      print("Time is not selected");
    }
  }

  @override
  void initState() {
    timeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: timeinput,
      readOnly: true,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
      ),
      onTap: () {
        _selectDate(context);
      },

      //onTap: onTap,
    );
  }
}
