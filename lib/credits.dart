import 'dart:ui';
import 'dart:io';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:fluttertest1/view.dart';

class Credits {
  final LangawGame game;
  Rect rect;
  Sprite sprite;

  Credits(this.game) {
    rect = Rect.fromLTWH(
      ((game.screenSize.width / 2) - game.tileSize) - (game.raintileSize * 1.5),
      (game.screenSize.height * .75) - (game.tileSize * 1.75),
      game.tileSize,
      game.tileSize,
    );
    sprite = Sprite('credits.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  void onTapDown() {
    game.activeView = View.credits;
  }
}