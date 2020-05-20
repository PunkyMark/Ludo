import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertest1/view.dart';

class LostView {
  final LangawGame game;
  Rect titleRect;
  TextPainter painter;
  TextStyle textStyle;
  Offset position;

  LostView(this.game) {
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
        (game.screenSize.height * .5) - (painter.height),
      );
    }
  }
  void onTapDown() {
    if(game.goOn){
      game.score = 0;
      game.activeView = View.playing;
    }
  }
  void onTapDownHome() {
    if (game.goOn) {
      game.goOn = false;
      game.score = 0;
      game.activeView = View.home;
    }
  }
}