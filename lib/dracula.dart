import 'package:flutter/material.dart';

class Dracula extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..color = Colors.black;

    final redFill = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.red;

    //face
    final face = Path();
    face.moveTo(size.width * 0.3, size.height * 0.2);
    face.arcToPoint(Offset(size.width * 0.8, size.height * 0.2),
        radius: const Radius.circular(50));
    face.lineTo(size.width * 0.8, size.height * 0.7);
    face.arcToPoint(Offset(size.width * 0.3, size.height * 0.7),
        radius: const Radius.circular(50));
    face.lineTo(size.width * 0.3, size.height * 0.65);
    face.quadraticBezierTo(size.width * 0.5, size.height * 0.7,
        size.width * 0.6, size.height * 0.4);
    face.quadraticBezierTo(size.width * 0.4, size.height * 0.6,
        size.width * 0.3, size.height * 0.5);
    face.lineTo(size.width * 0.3, size.height * 0.45);

    canvas.drawPath(face, paint);

    //nose
    final nose = Path();
    nose.moveTo(size.width * 0.5, size.height * 0.3);
    nose.quadraticBezierTo(size.width * 0.15, size.height * 0.2,
        size.width * 0.1, size.height * 0.5);
    nose.quadraticBezierTo(size.width * 0.15, size.height * 0.5,
        size.width * 0.4, size.height * 0.42);

    canvas.drawPath(nose, paint);

    //eyes
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.24), 30, paint);
    canvas.drawCircle(
        Offset(size.width * 0.3, size.height * 0.24), 10, redFill);
    canvas.drawCircle(Offset(size.width * 0.45, size.height * 0.24), 30, paint);
    canvas.drawCircle(
        Offset(size.width * 0.45, size.height * 0.24), 10, redFill);

    //hair
    final hair1 = Path();
    hair1.moveTo(size.width * 0.4, size.height * 0.07);
    hair1.quadraticBezierTo(size.width * 0.5, size.height * 0.03,
        size.width * 0.5, size.height * 0.15);
    canvas.drawPath(hair1, paint);

    final hair2 = Path();
    hair2.moveTo(size.width * 0.5, size.height * 0.07);
    hair2.quadraticBezierTo(size.width * 0.6, size.height * 0.03,
        size.width * 0.6, size.height * 0.15);
    canvas.drawPath(hair2, paint);

    final hair3 = Path();
    hair3.moveTo(size.width * 0.6, size.height * 0.07);
    hair3.quadraticBezierTo(size.width * 0.7, size.height * 0.03,
        size.width * 0.7, size.height * 0.15);
    canvas.drawPath(hair3, paint);

    //teeth
    final tooth1 = Path();
    tooth1.moveTo(size.width * 0.33, size.height * 0.52);
    tooth1.lineTo(size.width * 0.35, size.height * 0.58);
    tooth1.lineTo(size.width * 0.37, size.height * 0.53);

    canvas.drawPath(tooth1, paint);

    final tooth2 = Path();
    tooth2.moveTo(size.width * 0.37, size.height * 0.53);
    tooth2.lineTo(size.width * 0.39, size.height * 0.58);
    tooth2.lineTo(size.width * 0.41, size.height * 0.53);

    canvas.drawPath(tooth2, paint);

    //ear
    final ear = Path();
    ear.moveTo(size.width * 0.7, size.height * 0.3);
    ear.quadraticBezierTo(size.width * 0.8, size.height * 0.35,
        size.width * 0.9, size.height * 0.2);
    ear.quadraticBezierTo(size.width * 0.8, size.height * 0.45,
        size.width * 0.7, size.height * 0.4);
    // ear.close();

    canvas.drawPath(ear, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
