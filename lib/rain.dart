import 'dart:ui';
import 'package:fluttertest1/gameloop.dart';// Access to screen size
import 'dart:math';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/view.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:fluttertest1/home-view.dart';
// Rect instances are immutable. However its shift and translate methods can be used to move it.
class Rain {
  final LangawGame game;
  Rect rainRect;
  Paint rainPaint;
  bool onScreen = true;
  double x;
  double y;
  Random rnd;
  List rainXpos;
  List rainYpos;
  List colors2;
  List colors;
  int colorGreen = 0xff6ab04c;
  int colorRed = 0xffee5253;
  int colorYellow = 0xfffeca57;
  int colorBlue = 0xff54a0ff;
  int colorWhite = 0xffffffff;
  int rainColor;
  int yIncrease = 0;
  double speed = 10;
//  double xCenter;
//  double yCenter;


  Rain(this.game) {
    colors2 = [colorGreen, colorBlue, colorRed, colorYellow];
    colors = [colorGreen, colorRed, colorYellow, colorBlue,
      colorGreen,
      colorRed,
      colorYellow,
      colorBlue,
      colorGreen,
      colorRed,
      colorYellow,
      colorBlue,
      colorGreen,
      colorRed,
      colorYellow,
      colorBlue,
      colorGreen,
      colorRed,
      colorYellow,
      colorBlue,
      colorGreen,
      colorRed,
      colorYellow,
      colorBlue,
      colorGreen,
      colorRed,
      colorYellow,
      colorBlue,
      colorWhite
    ];
    rainXpos = [
      game.tileSize,
      game.tileSize + (game.raintileSize * 2),
      game.tileSize + (game.raintileSize * 4),
      game.tileSize + (game.raintileSize * 6),
      game.tileSize + (game.raintileSize * 8),
      game.tileSize + (game.raintileSize * 10),
      game.screenSize.width - (game.tileSize * 2)
    ];
    rainYpos = [
      game.tileSize,
      game.tileSize * -1,
      game.tileSize * -3,
      game.tileSize * -5,
      game.tileSize * -7,
      game.tileSize * -9,
      game.tileSize * -11
    ];
    rnd = Random();
    x = rainXpos[rnd.nextInt(rainXpos.length)];
    y = rainYpos[rnd.nextInt(rainYpos.length)];
    rainRect = Rect.fromLTWH(x, y, game.raintileSize, game.raintileSize);
    rainPaint = Paint();
    if(game.tut == false && game.notHome){
      game.greentext = true;
      if (game.tapLDone == false && game.tapRDone == false) {
        game.noRain = true;
        game.text = 'Press left of ball';
        game.subtext = 'to move left';
      }
      if (game.tapLDone && game.tapRDone == false) {
        game.noRain = true;
        game.text = 'Press right of ball';
        game.subtext = 'to move right';
      }
      if (game.amountRain > 4 && game.whiteObtained == false) {
        game.reduceRain = true;
        game.text = 'White gives you';
        game.subtext = 'power ups';
        rainColor = colorWhite;
        rainPaint.color = Color(rainColor);
      }
      if (game.amountRain > 4 && game.whiteObtained && game.poweractive == false) {
        game.reduceRain = false;
        game.noRain = true;
        game.text = 'Click to use power';
        game.subtext = 'Purchase more at store';
      }
      if (game.amountRain <= 4 && game.tapRDone && game.tapLDone) {
        game.noRain = false;
        game.text = 'Green increases score';
        game.subtext = 'Get green';
        rainColor = colorGreen;
        rainPaint.color = Color(rainColor);
      }
      if (game.amountRain > 4 && game.amountRain <= 10 && game.poweractive) {
        game.noRain = false;
        game.text = 'Avoid all other';
        game.subtext = 'colors';
        rainColor = colors2[rnd.nextInt(colors2.length)];
        rainPaint.color = Color(rainColor);
      }
      if (game.amountRain > 10) {
        game.tutorialDone.setBool('tut', true);
        game.greentext = false;
        rainColor = colors2[rnd.nextInt(colors2.length)];
        rainPaint.color = Color(rainColor);
      }

    }else {
      if (game.eagleActive || game.amountRain < 3 && game.activeView == View.playing) {
        rainColor = colorGreen;
        rainPaint.color = Color(rainColor);
      }
      else {
        if (game.activeView == View.playing && game.beanstalk_bought == true) {
            if (game.amountRain < 6) {
            rainColor = colorGreen;
            rainPaint.color = Color(rainColor);
          }
          else {
            if (game.swords_bought || game.magnet_bought || game.eagle_bought ||
                game.arrows_bought || game.armor_bought || game.shield_bought) {
              if (game.firstFree || game.secondFree || game.thirdFree) {
                rainColor = colors[rnd.nextInt(colors.length)];
                rainPaint.color = Color(rainColor);
              }
              else {
                rainColor = colors2[rnd.nextInt(colors2.length)];
                rainPaint.color = Color(rainColor);
              }
            }
            else {
              rainColor = colors2[rnd.nextInt(colors2.length)];
              rainPaint.color = Color(rainColor);
            }
          }
        }
        if (game.beanstalk_bought == false || game.activeView == View.lost ||
            game.activeView == View.home || game.activeView == View.credits) {
          if (game.swords_bought || game.magnet_bought || game.eagle_bought ||
              game.arrows_bought || game.armor_bought || game.shield_bought) {
            if (game.firstFree || game.secondFree || game.thirdFree) {
              rainColor = colors[rnd.nextInt(colors.length)];
              rainPaint.color = Color(rainColor);
            }
            else {
              rainColor = colors2[rnd.nextInt(colors2.length)];
              rainPaint.color = Color(rainColor);
            }
          }
          else {
            rainColor = colors2[rnd.nextInt(colors2.length)];
            rainPaint.color = Color(rainColor);
          }
        }
      }
    }
  }

  void render(Canvas c) {
    c.drawRect(rainRect, rainPaint);
  }

  void update(double t) {
    if(rainColor == colorGreen){
      speed = 10.2;
    }
    if(game.swordActive){
      yIncrease = 100;
    }else{
      yIncrease = 0;
    }
    if (game.activeView == View.playing)
      if (y >= game.fly.y + game.tileSize - game.raintileSize - yIncrease) {
        onScreen = false;
      }
    if (game.activeView == View.playing || game.activeView == View.home || game.activeView == View.lost || game.activeView == View.credits)
      if (onScreen) {
        y += game.raintileSize * speed * t;
        rainRect = rainRect.translate(0, game.raintileSize * speed * t);
      }
    if (game.activeView == View.home || game.activeView == View.lost || game.activeView == View.credits) {
      if (y >= game.screenSize.height) {
        onScreen = false;
      }
    }
  }
}