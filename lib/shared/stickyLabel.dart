import 'package:flutter/material.dart';
import 'package:flutter_api/shared/constant.dart';

class StickyLabel extends StatelessWidget {
  final String text;
  final Color textColor;
  const StickyLabel({
    Key? key,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        top: kFixPadding,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
