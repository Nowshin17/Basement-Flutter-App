import 'package:flutter/material.dart';

import '../widgets/custom_AppBar.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "CheckBox Widget",
        ),
        body: ListView(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            CustomRadioButton(
                tittleText: "Male",
                checkBoxValue: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
            CustomRadioButton(
              tittleText: "Female",
              checkBoxValue: isChecked2,
              onChanged: (bool? value) {
                setState(
                  () {
                    isChecked2 = value!;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.checkBoxValue,
    required this.tittleText,
    required this.onChanged,
  });

  final bool checkBoxValue;
  final String tittleText;

  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        children: [
          Expanded(
            child: CheckboxListTile(
              title: Text(tittleText),
              value: checkBoxValue,
              onChanged: onChanged,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
        ],
      ),
    );
  }
}
