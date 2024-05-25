import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameAndTitle extends StatelessWidget {
  const NameAndTitle({
    Key? key,
    required this.nameLabel,
    required this.titleLabel,
    this.nameColor,
    this.titleColor,
  }) : super(key: key);


  final Color? nameColor;
  final String nameLabel;
  final Color? titleColor;
  final String titleLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nameLabel,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: nameColor ?? Colors.white,
            ),
          ),
          Text(
            titleLabel,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: titleColor ?? Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
