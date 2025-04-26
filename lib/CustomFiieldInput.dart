import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final TextEditingController? controller;
  bool obscureText;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget prefixIcon;
  final String? label;
  final bool isPassword;

  CustomInput({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.label,
    this.isPassword = false,
    required this.prefixIcon,
    this.hintStyle,
    this.style,
  });

  @override
  State<CustomInput> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextFormField(
        obscureText: widget.obscureText,
        controller: widget.controller,
        validator: widget.validator,
        style: widget.style,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: widget.hintStyle,
          border: OutlineInputBorder(),
          prefixIcon: widget.prefixIcon,
          suffixIcon:
              widget.isPassword
                  ? IconButton(
                    onPressed: () {
                      // print("switch obscure text");
                      setState(() {
                        widget.obscureText = !widget.obscureText;
                      });
                    },
                    icon:
                        widget.obscureText
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.remove_red_eye),
                  )
                  : widget.suffixIcon,
          labelText: widget.label,
        ),
      ),
    );
  }
}
