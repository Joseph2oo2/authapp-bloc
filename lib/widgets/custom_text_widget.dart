import 'package:flutter/material.dart';

class CustomTextWidget extends StatefulWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String?  fontFamily;
  const CustomTextWidget(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.color, this.fontFamily});

  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(

          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
          fontFamily: widget.fontFamily,
          color: widget.color),
    );
  }
}
