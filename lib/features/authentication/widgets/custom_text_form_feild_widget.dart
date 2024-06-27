import 'package:flutter/material.dart';

class CustomTextFormFeildWidget extends StatefulWidget {
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? borderRadius;
  final bool obscureText;
  const CustomTextFormFeildWidget(
      {super.key,
      this.obscureText = false,
      this.suffixIcon,
      this.borderRadius,
      this.prefixIcon,
      required this.controller});

  @override
  State<CustomTextFormFeildWidget> createState() =>
      _CustomTextFormFeildWidgetState();
}

class _CustomTextFormFeildWidgetState extends State<CustomTextFormFeildWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText:widget.obscureText&& _obscureText,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText
            ? IconButton(

                icon: Icon(
                  _obscureText
                      ? Icons.visibility_off
                      : Icons.visibility_outlined,
                  color: Colors.black,
                ),
          onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });

          },)
            : widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
        ),
      ),
    );
  }
}
