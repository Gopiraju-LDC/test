// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:test_application/constants/constants.dart';

class CountDownTimer extends StatefulWidget {
  CountDownTimer({required this.isTextNeed, required this.strokeWidth});

  final bool isTextNeed;
  final double strokeWidth;

  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  late AnimationController controller;

  String get timerString {
    Duration duration = controller.duration! * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );
    if (controller.isAnimating)
      controller.stop();
    else {
      controller.reverse(
        from: controller.value == 0.0 ? 1.0 : controller.value,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Stack(
            children: <Widget>[
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     color: Colors.amber,
              //     height: controller.value * MediaQuery.of(context).size.height,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.center,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: CustomPaint(
                                  painter: CustomTimerPainter(
                                    strokeWidth: widget.strokeWidth,
                                    animation: controller,
                                    backgroundColor: Colors.white,
                                    color: Color(0xFF0150AD),
                                    indicatorBackgroundColor: Color(0xFFD9D9D9),
                                  ),
                                ),
                              ),
                              if(widget.isTextNeed)
                              Align(
                                alignment: FractionalOffset.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      timerString,
                                      textAlign: TextAlign.right,
                                      style: poppinsStyle(
                                        color: Color(0xFF0150AD),
                                        fontSize: 42,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Minutes',
                                      textAlign: TextAlign.right,
                                      style: poppinsStyle(
                                        color: Color(0xFF0150AD),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // AnimatedBuilder(
                    //   animation: controller,
                    //   builder: (context, child) {
                    //     return FloatingActionButton.extended(
                    //       onPressed: () {
                    // if (controller.isAnimating)
                    //   controller.stop();
                    // else {
                    //   controller.reverse(
                    //     from: controller.value == 0.0
                    //         ? 1.0
                    //         : controller.value,
                    //   );
                    // }
                    //       },
                    //       icon: Icon(
                    //         controller.isAnimating
                    //             ? Icons.pause
                    //             : Icons.play_arrow,
                    //       ),
                    //       label: Text(
                    //         controller.isAnimating ? "Pause" : "Play",
                    //       ),
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CustomTimerPainter extends CustomPainter {
  CustomTimerPainter({
    required this.animation,
    required this.backgroundColor,
    required this.indicatorBackgroundColor,
    required this.color,
    required this.strokeWidth,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final double strokeWidth;
  final Color backgroundColor, color, indicatorBackgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    Paint indicatorColor = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
        size.center(Offset.zero), size.width / 2.0, indicatorColor);
    indicatorColor.color = indicatorBackgroundColor;
    double indicatorColorProgress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(
      Offset.zero & size,
      math.pi * 1.5,
      -indicatorColorProgress,
      false,
      indicatorColor,
    );

    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
        size.center(Offset.zero), size.width / 2.0, indicatorColor);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}
