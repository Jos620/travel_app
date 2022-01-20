import 'package:flutter/material.dart';

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CircleTabIndicatorPainter(
      color: color,
      radius: radius,
    );
  }
}

class _CircleTabIndicatorPainter extends BoxPainter {
  final Color color;
  final double radius;

  _CircleTabIndicatorPainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;

    final Offset circleOffset = Offset(
      configuration.size!.width / 2 - radius / 2,
      configuration.size!.height - radius - 4,
    );

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
