import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertest1/view.dart';
import 'package:fluttertest1/rain.dart';

class ShoppingView {
  final LangawGame game;
  TextPainter painter;
  TextStyle textStyle;
  Offset position;
  Rect rect;
  Sprite sprite;
  double x;
  double y;
  double xp;
  double yp;
  int price;
  String priceString;
  bool bought = false;
  String power;

  ShoppingView(this.game, this.x, this.y, this.price, this.xp, this.yp, this.priceString, [this.power]) {
    painter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    textStyle = TextStyle(
        color: Color(0xffffffff),
        fontSize: 18
    );

    position = Offset.zero;

    update();

    rect = Rect.fromLTWH(
      game.tileSize + (game.tileSize * x),
      game.tileSize + (game.tileSize * 1.263 * y),
      game.tileSize * 2.2,
      game.tileSize * 2.2 * 1.263,
    );
    sprite = Sprite('templateshop.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
    painter.paint(c, position);
  }

  void update() {
    painter.text = TextSpan(
      text: '$priceString',
      style: textStyle,
    );

    painter.layout();

    position = Offset(
      game.tileSize * xp,
      game.tileSize * yp,
    );
  }
}