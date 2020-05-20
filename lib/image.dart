import 'dart:ui';
import 'dart:io';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:fluttertest1/view.dart';

class Images {
  final LangawGame game;
  Rect rect;
  Sprite sprite;
  String image;
  double sizex;
  double sizey;
  double x;
  double y;

  Images(this.game, this.image, this.x, this.y, this.sizex, this.sizey) {
    rect = Rect.fromLTWH(
      game.tileSize * x,
      game.tileSize * y,
      game.tileSize * this.sizex,
      game.tileSize * this.sizey,
    );
    sprite = Sprite(image);
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }
}