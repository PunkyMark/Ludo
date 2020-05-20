import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:fluttertest1/gameloop.dart';


class ScoreDisplay {
  final LangawGame game;
  TextPainter painter;
  TextStyle textStyle;
  Offset position;

  ScoreDisplay(this.game) {
    painter = TextPainter(textAlign: TextAlign.center, textDirection: TextDirection.ltr);

    textStyle = TextStyle(color: Color(0xffffffff), fontSize: 90);

    position = Offset.zero;
  }

  void render(Canvas c) {
    painter.paint(c, position);
  }

  void update(double t) {
    if ((painter.text?.text ?? '') != game.score.toString()) {
      painter.text = TextSpan(
        text: game.score.toString(),
        style: textStyle,
      );

      painter.layout();

      position = Offset(
        (game.screenSize.width / 2) - (painter.width / 2),
        (game.screenSize.height * .2) - (painter.height),
      );
    }
  }
}