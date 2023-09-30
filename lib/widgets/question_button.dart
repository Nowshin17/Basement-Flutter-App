import 'package:flutter/material.dart';

import '../utils/constant/decoration/decoration_constant.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton(
      {Key? key,
      required this.questionString,
      required this.buttonString,
      required this.buttonPress})
      : super(key: key);
  final String questionString;
  final String buttonString;
  final void Function() buttonPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width + 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questionString, style: questionTextStyle),
            TextButton(
              onPressed: buttonPress,
              child: Text(
                buttonString,
                style: questionButtonTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
