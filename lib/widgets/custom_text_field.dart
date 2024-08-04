import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.width,
    required this.elevation,
    required this.borderRadius,
    required this.hint,
    required this.color,
  });
  final double width;
  final double elevation;
  final double borderRadius;
  final String hint;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(borderRadius),
        child: TextField(
          style: const TextStyle(color: Color(0xff999FA7), fontFamily: 'Dexef'),
          cursorColor: const Color(0xff999FA7),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(fontFamily: 'Dexef', color: Colors.grey[300]),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding: const EdgeInsets.only(left: 18),
            fillColor: color,
            filled: true,
            hoverColor: color,
          ),
        ),
      ),
    );
  }
}