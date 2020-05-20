import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:fluttertest1/view.dart';
import 'package:fluttertest1/rain.dart';
import 'dart:math';

class Ads {
  final LangawGame game;
  Rect rect;
  Sprite sprite;
  double x;
  double y;

  Ads(this.game, this.x, this.y) {
    rect = Rect.fromLTWH(game.tileSize + (game.tileSize * x) + ((game.tileSize * 2.2 - game.tileSize * 1.6) / 2), game.tileSize + (game.tileSize * 1.263 * y) + ((game.tileSize * 2.2 - game.tileSize * 1.6) / 2), game.tileSize * 6.4 * 1.2, game.tileSize * 1.2);
    sprite = Sprite('banner2.jpg');
  }

  void render(Canvas c) {
   sprite.renderRect(c, rect);
  }
}