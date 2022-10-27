import 'package:flutter/material.dart';
import 'app_colors.dart';

class TrianglePainter extends CustomPainter {
  // ignore: prefer_typing_uninitialized_variables
  var mSize;
  TrianglePainter(this.mSize);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = AppColors.primary;

    // upPath
    var upPath = Path();
    upPath.moveTo(mSize.width / 2, 0);
    upPath.lineTo(mSize.width, 0);
    upPath.lineTo(mSize.width, mSize.height / 3);
    upPath.close();

    // downPath
    var downPath = Path();
    downPath.moveTo(0, (mSize.height / 3) * 2);
    downPath.lineTo(0, mSize.height);
    downPath.lineTo(mSize.width / 2, mSize.height);
    downPath.close();

    canvas.drawPath(upPath, paint);
    canvas.drawPath(downPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
