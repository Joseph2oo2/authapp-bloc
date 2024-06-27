import 'package:flutter/material.dart';

class CustomIconWidget extends StatefulWidget {
  final IconData icon;
  final double? size;
  final Color? color;
  const CustomIconWidget({super.key, required this.icon, this.size, this.color});

  @override
  State<CustomIconWidget> createState() => _CustomIconWidgetState();
}

class _CustomIconWidgetState extends State<CustomIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Icon(widget.icon,color:widget.color,size: widget.size,);
  }
}
