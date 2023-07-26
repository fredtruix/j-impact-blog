import 'package:flutter/material.dart';

class CusTomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final bool obscureText;
  const CusTomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.maxLines = 1,
      this.obscureText = false})
      : super(key: key);

  @override
  State<CusTomTextField> createState() => _CusTomTextFieldState();
}

class _CusTomTextFieldState extends State<CusTomTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black26,
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        filled: true,
        fillColor: Colors.black12,
        focusColor: Colors.white,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide:
              BorderSide(color: Colors.redAccent), // Set focus color here
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your ${widget.hintText}';
        }
        return null;
      },
      maxLines: widget.maxLines,
    );
  }
}
