import 'package:flutter/material.dart';

import '../widgets/custom_AppBar.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({Key? key}) : super(key: key);

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  Gender gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "Radio Button Screen",
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRadioButton(
                    tittleText: "Male",
                    groupValue: gender,
                    radioValue: Gender.male,
                    onChanged: (Gender? value) {
                      setState(() {
                        gender = value!;
                      });
                    }),

                CustomRadioButton(
                    tittleText: "Female",
                    groupValue: gender,
                    radioValue: Gender.female,
                    onChanged: (Gender? value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum Gender { male, female, none }

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.groupValue,
    required this.radioValue,
    required this.tittleText,
    required this.onChanged,
  });

  final Gender groupValue;
  final Gender radioValue;
  final String tittleText;

  final Function(Gender?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Radio(
                value: radioValue,
                groupValue: groupValue,
                activeColor: Colors.green,
                onChanged: onChanged,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  tittleText,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
