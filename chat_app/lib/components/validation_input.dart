import 'package:flutter/material.dart';

class ValidationInput extends StatelessWidget {
  const ValidationInput({
    super.key,
    required this.icons,
    required this.hint,
    required this.keyboardLayout,
  });

  final IconData icons;
  final String hint;
  final TextInputType keyboardLayout;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardLayout,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icons),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(25),
          ),
          borderSide: BorderSide(color: Colors.white10),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(25),
          ),
          borderSide: BorderSide(color: Colors.white60),
        ),
      ),
    );
  }
}
