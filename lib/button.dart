import 'package:flutter/material.dart';
import 'package:flame/util.dart';// Can keep portrait, tells O.S to run full screen and no notification bar or buttons
import 'package:flutter/services.dart';// Gives access to device orientation
import 'package:fluttertest1/gameloop.dart';
import 'package:flutter/gestures.dart';
import 'package:flame/game.dart';
import 'package:fluttertest1/fly.dart';


class Button {
  final LangawGame game;
  Rect buttonRect;
  Paint buttonPaint;
  bool dir_right;
  bool isLeft = false;
  bool isRight = false;
  bool changeColor = false;

  Button(this.game, double pos, this.dir_right) {
    buttonRect = Rect.fromLTWH((game.screenSize.width - game.btileSize) * pos, game.screenSize.height - (game.btileSize * 2), game.btileSize, game.btileSize);
    buttonPaint = Paint();
    buttonPaint.color = Color(0xff7bed9f);
  }

  void render(Canvas c) {
    c.drawRect(buttonRect, buttonPaint);
  }

  void update(double t){
    if(changeColor){
      if (dir_right == true) {
        if(isRight) {
          buttonPaint.color = Color(0xffff4757);
        }
      }
      if (dir_right == false) {
        if(isLeft){
          buttonPaint.color = Color(0xffff4757);

        }
      }
    }
  }

  bool onTapDown() {
    if (dir_right == true) {
      return true;
    }
    else{

      return false;
    }
  }

  bool onTapUp() {
    buttonPaint.color = Color(0xff7bed9f);
  }
}
