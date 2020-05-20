import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flame/sprite.dart';

class GemsDisplay {
  final LangawGame game;
  TextPainter painter;
  TextStyle textStyle;
  Offset position;
  Sprite gem;
  Rect gemRect;

  GemsDisplay(this.game) {
    gem = Sprite('gem_9.png');

    painter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    textStyle = TextStyle(
        color: Color(0xffffffff),
        fontSize: 30
    );

    position = Offset.zero;
    updateGems();
  }

  void updateGems() {
    int gems = game.gemsstorage.getInt('gems') ?? 0;

    painter.text = TextSpan(
      text:  gems.toString(),
      style: textStyle,
    );

    painter.layout();

    position = Offset(game.screenSize.width - (game.tileSize * .25) - painter.width, game.tileSize * .25);
  }

  void render(Canvas c) {
    painter.paint(c, position);
    gemRect = Rect.fromLTWH(game.screenSize.width - (game.tileSize) - (painter.width * .93), game.tileSize * .435, game.raintileSize * 1.2, game.raintileSize);
    gem.renderRect(c, gemRect);
  }
}