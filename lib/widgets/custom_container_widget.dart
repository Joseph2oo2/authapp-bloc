import 'package:flutter/material.dart';

class CustomContainerWidget extends StatefulWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  final double? borderRadius;
  final BoxBorder? border;
  const CustomContainerWidget(
      {super.key, this.height, this.width, this.color, this.child, this.borderRadius, this.border});

  @override
  State<CustomContainerWidget> createState() => _CustomContainerWidgetState();
}

class _CustomContainerWidgetState extends State<CustomContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border:widget.border ,borderRadius: BorderRadius.circular(widget.borderRadius??0),color: widget.color,),
      height: widget.height,
      width: widget.width,

      child: widget.child,
    );
  }
}
