import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';

class Board {
  final LangawGame game;
  Rect rect;
  Sprite sprite;

  Board(this.game) {
    rect = Rect.fromLTWH(
      (game.screenSize.width - game.tileSize * 9) / 2,
      (game.screenSize.height - game.tileSize * 9) / 2,
      game.tileSize * 9,
      game.tileSize * 9,
    );
    sprite = Sprite('ludostarboard.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }
}