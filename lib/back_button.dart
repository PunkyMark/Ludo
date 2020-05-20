import 'dart:ui';
import 'dart:io';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:fluttertest1/view.dart';

class Back {
  final LangawGame game;
  Rect rect;
  Sprite sprite;

  Back(this.game) {
    rect = Rect.fromLTWH(
      game.tileSize * 0.52346,
      game.tileSize * .125,
      game.tileSize * 0.9 * 0.8 * 1.5,
      game.tileSize * 0.9 * 0.8 * 1.5,
    );
    sprite = Sprite('back.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  void onTapDown() {
    game.activeView = View.home;
  }
}