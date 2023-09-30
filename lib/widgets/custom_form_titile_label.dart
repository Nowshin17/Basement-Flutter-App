import 'package:flutter/material.dart';

import '../utils/constant/widgetConstant/constant.dart';

class CustomFormLabel extends StatelessWidget {
  const CustomFormLabel(
      {Key? key, required this.label, required this.isMandatory})
      : super(key: key);

  final String label;
  final bool isMandatory;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isMandatory == false
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    child: Text(
                  label,
                  style: boldNormalTextStyle,
                )),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    child: Text(
                  label,
                  style: boldNormalTextStyle,
                )),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 15,
                ),
              ],
            ),
    );
  }
}
