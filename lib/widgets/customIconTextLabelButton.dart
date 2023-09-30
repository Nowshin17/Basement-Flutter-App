import 'package:flutter/material.dart';

import '../utils/constant/colors/color.dart';
import '../utils/constant/decoration/decoration_constant.dart';

class IconTextLabelButton extends StatelessWidget {
  const IconTextLabelButton(
      {Key? key,
      required this.buttonPress,
      required this.buttonIcon,
      required this.buttonLabel})
      : super(key: key);
  final Widget buttonIcon;
  final String buttonLabel;
  final void Function() buttonPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      color: iconButtonColor,
      child: SizedBox(
        width: 350,
        child: TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black87,
          ),
          onPressed: buttonPress,
          icon: buttonIcon,
          label: Text(
            buttonLabel,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
