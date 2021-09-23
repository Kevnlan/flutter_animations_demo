import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class Transitions extends StatelessWidget {
  final Widget? child;
  final Duration duration;
  final double offset;
  final Axis axis;

  const Transitions({
    Key? key,
    this.axis = Axis.horizontal,
    this.duration = const Duration(milliseconds: 500),
    this.offset = 150.0,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return TweenAnimationBuilder<double>(
      child: child,
      duration: duration,
      curve: Curves.easeOutQuint,
      tween: Tween(begin: 1.0, end: 0.0),
      builder: (context, value, child) {
        return Transform.translate(
          offset: axis == Axis.horizontal
              ? Offset(value * offset, 0.0)
              : Offset(0.0,value * offset),
          child: child,
        );
      },
    );
  }
}
