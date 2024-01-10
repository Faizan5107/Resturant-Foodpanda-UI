import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DolDurmaClipper extends CustomClipper<Path> {
  final double holeRadius;

  DolDurmaClipper({required this.holeRadius});

  @override
  Path getClip(Size size) {
    var bottom = size.height / 2;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0.0, size.height - bottom - holeRadius)
      ..arcToPoint(
        Offset(0, size.height - bottom),
        clockwise: true,
        radius: Radius.circular(1),
      )
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - bottom)
      ..arcToPoint(
        Offset(size.width, size.height - bottom - holeRadius),
        clockwise: true,
        radius: Radius.circular(1),
      );

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}

Widget couponWidget() {
  return Container(
    height: 200,
    width: 350,
    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
    child: ClipPath(
      clipper: DolDurmaClipper(holeRadius: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 15), // Top widgets
            Padding(
              //Separater line
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                color: Colors.grey,
                height: 2,
              ),
            ),
            const SizedBox(height: 32), // Bottom widgets
          ],
        ),
      ),
    ),
  );
}
