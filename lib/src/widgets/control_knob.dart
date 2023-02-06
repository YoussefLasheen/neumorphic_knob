import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:knob_widget/src/utils/knob_style.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import 'circle_tick_painter.dart';

class ControlKnob extends StatelessWidget {
  final double rotation;

  const ControlKnob(
    this.rotation, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = Provider.of<KnobStyle>(context);
    return Transform(
      transform: Matrix4.rotationZ(2 * pi * rotation),
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(   
                padding: EdgeInsets.all(style.pointerStyle.offset),
                child: Container(
                  height: style.pointerStyle.height,
                  width: style.pointerStyle.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: style.pointerStyle.color,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
