import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  const CustomRadio(
      {Key? key,
        this.radioButtonContainerWidth,
        this.radioButtonContainerHeight,
        required this.radioButtonValue,
        required this.radioButtonGroupValue,
        required this.radioButtonLebelText,
        required this.fontSize,
        required this.onChange,
        required this.radiobButtonActiveColor})
      : super(key: key);

  final ValueChanged<Object?> onChange;
  final double? radioButtonContainerWidth;
  final double? radioButtonContainerHeight;
  final Object radioButtonValue;
  final Object radioButtonGroupValue;
  final String radioButtonLebelText;
  final double fontSize;

  final Color radiobButtonActiveColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (radioButtonValue != radioButtonGroupValue) {
          onChange(radioButtonValue);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: radioButtonContainerWidth,
            height: radioButtonContainerHeight,

            child: Row(
              children: [
                Radio(activeColor: radiobButtonActiveColor,
                  //fillColor: Colors.green,
                  value: radioButtonValue,
                  groupValue: radioButtonGroupValue,
                  onChanged: (Object? newValue) {
                    onChange(newValue!);
                  },
                ),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                      radioButtonLebelText,
                      style: TextStyle(
                          fontSize: fontSize), textAlign: TextAlign.center
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
