import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {Key? key,
      this.radioButtonContainerWidth,
      this.radioButtonContainerHeight,
      required this.radioButtonContainerBorderWidth,
      required this.rdaioButtonContainerColor,
      required this.radioButtonValue,
      required this.radioButtonGroupValue,
      required this.radioButtonLebelText,
      required this.fontSize,
      required this.radioButtonLebelTextLabelColor,
      required this.onChange,
      required this.radiobButtonActiveColor})
      : super(key: key);

  final ValueChanged<Object?> onChange;
  final double? radioButtonContainerWidth;
  final double? radioButtonContainerHeight;
  final double radioButtonContainerBorderWidth;
  final Color rdaioButtonContainerColor;
  final Object radioButtonValue;
  final Object radioButtonGroupValue;
  final String radioButtonLebelText;
  final double fontSize;
  final Color radioButtonLebelTextLabelColor;
  final Color radiobButtonActiveColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (radioButtonValue != radioButtonGroupValue) {
          onChange(radioButtonValue);
        }
      },
      child: Container(
        //alignment: Alignment.centerLeft,
        width: radioButtonContainerWidth,
        height: radioButtonContainerHeight,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all( Radius.circular(4.0)),
          border: Border.all(
            width: radioButtonContainerBorderWidth,
            color: rdaioButtonContainerColor,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -10,
              child: Radio(
                activeColor: radiobButtonActiveColor,
                //fillColor: Colors.green,
                value: radioButtonValue,
                groupValue: radioButtonGroupValue,
                onChanged: (Object? newValue) {
                  onChange(newValue!);
                },
              ),
            ),
            Positioned(
              bottom: 14,
              left: 28,
              child: Container(
                child: Text(radioButtonLebelText,
                    style: TextStyle(
                        fontSize: fontSize,
                        color: radioButtonLebelTextLabelColor),
                    textAlign: TextAlign.left),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
