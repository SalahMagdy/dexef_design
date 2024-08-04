import 'package:flutter/material.dart';

class TrianglePaint extends CustomPainter {
  TrianglePaint({required this.color});
  final Color color ;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();


    // Draw the rounded corner
    path.moveTo(size.width-18 ,0 );
    path.arcToPoint(Offset(size.width,18 ),
      radius: const Radius.circular(16),
      clockwise: true,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;
}