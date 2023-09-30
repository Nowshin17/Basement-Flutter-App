import 'package:flutter/material.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.green.shade50,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
