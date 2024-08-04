import 'package:flutter/material.dart';

class FreeTrailButton extends StatelessWidget {
  const FreeTrailButton({super.key, required this.function});
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 3,
      child: MaterialButton(
        onPressed: function,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        padding: const EdgeInsetsDirectional.only(start: 3),
        child: Container(
          width: 335,
          height: 50,
          padding: const EdgeInsets.only(left: 30, top: 14),
          decoration: BoxDecoration(

              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              border: Border.all(color: const Color(0xffEDEFF2))),
          child: const Text(
            'Start 30 Days Free Trail',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color(0xff0075F4),
              fontFamily: 'Dexef',
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}