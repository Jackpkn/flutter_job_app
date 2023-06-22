// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String text;

  final TextStyle style;
  const ReusableText({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      overflow: TextOverflow.fade,
      maxLines: 1,
      softWrap: false,
    );
  }
}
