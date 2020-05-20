import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertest1/view.dart';
import 'package:fluttertest1/rain.dart';

class HomeView {
  final LangawGame game;
  Rect rect;
  Sprite sprite;

  HomeView(this.game) {
    rect = Rect.fromLTWH(
      game.tileSize * 1.5,
      (game.screenSize.height * .5) - (game.tileSize * 3.5),
      game.tileSize * 4.375 * 1.4,
      game.tileSize * 2.4,
    );
    sprite = Sprite('ludostarlogo.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }


  void update(double t) {

  }

  void onTapDown() {
    game.homerains = List<Rain>();
    game.activeView = View.playing;
  }
}