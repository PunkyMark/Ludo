import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';

class HomeButton {
  final LangawGame game;
  Rect rect;
  Sprite sprite;

  HomeButton(this.game) {
    rect = Rect.fromLTWH(
      game.tileSize * 1.5,
      (game.screenSize.height * .75) - (game.tileSize * 3.5) + (game.tileSize * 1.5) + game.raintileSize,
      game.tileSize * 6,
      game.tileSize * 1.5,
    );
    sprite = Sprite('home.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }
}