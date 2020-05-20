import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:fluttertest1/view.dart';

class HeartPixel {
  final LangawGame game;
  Rect rect;
  Sprite sprite;
  double x;
  double y;
  bool live_lost = false;
  String heart = 'heart-pixel.png';
  String heart_lost = 'heart-lost.png';
  int pos;

  HeartPixel(this.game, this.x, this.y, this.pos) {
    rect = Rect.fromLTWH(
      game.raintileSize * 2 + (game.raintileSize * 2 * x) + ((game.raintileSize * 2 * 2.2 - game.raintileSize * 2 * 1.6)/ 2) * 6.5,
      game.tileSize,
      game.raintileSize * 1.65,
      game.raintileSize * 1.65,
    );
    sprite = Sprite(heart);
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  void update() {
    if(live_lost){
      sprite = Sprite(heart_lost);
    }
  }
}