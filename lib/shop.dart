import 'dart:ui';
import 'dart:io';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:fluttertest1/view.dart';

class Shop {
  final LangawGame game;
  Rect rect;
  Sprite sprite;

  Shop(this.game) {
    rect = Rect.fromLTWH(
      ((game.screenSize.width) / 2) + (game.raintileSize * 1.5),
      (game.screenSize.height * .75) - (game.tileSize * 1.75),
      game.tileSize,
      game.tileSize,
    );
    sprite = Sprite('shop.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  void onTapDown() {
    game.activeView = View.shopping;
//    sleep(const Duration(milliseconds:50));
  }
}