import 'dart:ui';
import 'package:fluttertest1/gameloop.dart';// Access to screen size
import 'package:fluttertest1/rain.dart';
import 'package:fluttertest1/view.dart';
import 'package:flame/sprite.dart';
import 'dart:math' as math;
import 'package:fluttertest1/render_power.dart';

// Rect instances are immutable. However its shift and translate methods can be used to move it.
class Fly{
  final LangawGame game;
  Rect flyRect;
  Rect L1Rect;
  bool isLeft = false;
  bool extra_live = false;
  bool isRight = false;
  bool isUp = false;
  double x;
  double y;
  int pixel_pos = 0;
  Sprite ball;
  Color colorBlack = Color(0x000000);
  int pos;
  Paint paint1 = Paint();
  Paint paint2 = Paint();
  double xCenter;
  double yCenter;
  double width;
  bool renderL1 = false;
  bool renderR1 = false;

  Fly(this.game, this.x, this.y) {
    width = game.tileSize;
    ball = Sprite('circle.png');
    flyRect = Rect.fromLTWH(x, y, game.tileSize, game.tileSize);
//    L1Rect = Rect.fromLTWH(x + (game.tileSize / 3.5), y, game.tileSize, game.tileSize);
    paint1.color = colorBlack.withOpacity(1);
    paint2.color = colorBlack.withOpacity(0.8);
  }

  void render(Canvas c) {
    if(renderL1) {
      if (game.smallActive == false) {
        c.drawCircle(Offset(x + (game.tileSize / 1.6), y + (game.tileSize / 2)), game.tileSize / 2, paint1);
        c.drawCircle(Offset(x + (game.tileSize / 1.25), y + (game.tileSize / 2)), game.tileSize / 2.2, paint2);
//      ball.renderRect(c, L1Rect.deflate(2));
      }
    }
    if(renderR1) {
      if (game.smallActive == false) {
        c.drawCircle(Offset(x - ((game.tileSize / 1.6) - game.tileSize), y + (game.tileSize / 2)), game.tileSize / 2, paint1);
        c.drawCircle(Offset(x - ((game.tileSize / 1.25) - game.tileSize), y + (game.tileSize / 2)), game.tileSize / 2.2, paint2);
//      ball.renderRect(c, L1Rect.deflate(2));
      }
    }
    if(game.smallActive == false){
      width = game.tileSize;
      ball.renderRect(c, flyRect);
    }else{
      ball.renderRect(c, flyRect.deflate(10));
      width = flyRect.deflate(10).width;
    }

  }

  void update(double t) {
    if (isLeft) {
      if(x <= game.screenSize.width * 0.35) {
        game.tapLDone = true;
      }
      renderL1 = false;
      renderR1 = false;
      if (x >= game.tileSize) {
        renderL1 = true;
        renderR1 = false;
        x += (game.tileSize * -7 * t);
        flyRect = flyRect.translate(game.tileSize * -7 * t, 0);
      }
    }
    if (isRight) {
      if(x >= (game.screenSize.width * 0.65) - game.tileSize && game.tapLDone) {
        game.tapRDone = true;
      }
      renderL1 = false;
      renderR1 = false;
      if (x <= game.screenSize.width - (game.tileSize * 2)){
        renderL1 = false;
        renderR1 = true;
        x += (game.tileSize * 7 * t);
        flyRect = flyRect.translate(game.tileSize * 7 * t, 0);
      }
    }
    if(isRight == false && isLeft == false){
      renderL1 = false;
      renderR1 = false;
    }
    if(extra_live){
      pos = 3;
    }
    else{
      pos = 2;
    }
    if (isUp && game.shieldActive == false){
      if (pixel_pos < pos) {
        pixel_pos += 1;
        y += game.tileSize * -2;
        flyRect = flyRect.translate(0, game.tileSize * -2);
//        L1Rect = L1Rect.translate(0, game.tileSize * -2);
        isUp = false;
      }
      else{
        game.activeView = View.lost;
        game.tapRDone = false;
        game.tapLDone = false;
        game.greentext = false;
        game.tut = true;
        game.goOn = false;
        game.power_up = List<Powers>();
        game.rains = List<Rain>();
        game.amountRain = 1;
        pixel_pos = 0;
        isUp = false;
        isLeft = false;
        game.smallActive = false;
        game.swordActive = false;
        game.shieldActive = false;
        game.eagleActive = false;
        game.magnetActive = false;
        game.arrowsActive = false;
        isRight = false;
        game.goOn = false;
        game.heart_add = true;
        game.firstFree = true;
        game.secondFree = true;
        game.thirdFree = true;
        if(game.heart_bought){
          y += game.tileSize * 6;
          flyRect = flyRect.translate(0, game.tileSize * 6);
//          L1Rect = L1Rect.translate(0, game.tileSize * 6);
          game.heart_pixel_add = true;
          extra_live = true;
        }
        else{
          y += game.tileSize * 4;
          flyRect = flyRect.translate(0, game.tileSize * 4);
//          L1Rect = L1Rect.translate(0, game.tileSize * 4);
        }
      }
    }
    if (isUp && game.shieldActive){
      isUp = false;
    }
  }
}