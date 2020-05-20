import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:fluttertest1/gameloop.dart';
import 'package:fluttertest1/view.dart';
import 'package:fluttertest1/rain.dart';
import 'dart:math';

class Powers {
  final LangawGame game;
  Rect rect;
  Rect rect_background;
  Sprite sprite;
  Sprite background;
  double x;
  double y;
  bool active = false;
  var power;
  int raincount = 0;
  int pos;
  int rainlimit = 0;
  bool remove = false;

  Powers(this.game, this.x, this.y, this.power, this.pos) {
    rect = Rect.fromLTWH(
      game.tileSize + (game.tileSize * x) + ((game.tileSize * 2.2 - game.tileSize * 1.6)/ 2),
      game.tileSize + (game.tileSize * 1.263 * y) + ((game.tileSize * 2.2 - game.tileSize * 1.6)/ 2),
      game.tileSize * 1.6,
      game.tileSize * 1.6,
    );
    rect_background = Rect.fromLTWH(
      game.tileSize + (game.tileSize * x),
      game.tileSize + (game.tileSize * 1.263 * y),
      game.tileSize * 2.2,
      game.tileSize * 2.2,
    );
    sprite = Sprite(power);
    background = Sprite('circle.png');
  }

  void render(Canvas c) {
    if (active) {
      background.renderRect(c, rect_background.inflate(3.5));
      sprite.renderRect(c, rect.inflate(3.5));
    }else{
      background.renderRect(c, rect_background);
      sprite.renderRect(c, rect);
    }
  }

  void eliminate(){
    if(active == true) {
      if(power == "eagle-emblem.png"){
        rainlimit = 25;
        game.eagleActive = true;
      }
      else{
        rainlimit = game.amountRain * 2;
      }
      if(power == "chest-armor.png") {
        game.smallActive = true;
        if(game.tut == false){
          rainlimit = 30;
        }
      }
      if(power == "all-for-one.png") {
        game.swordActive = true;
      }
      if(power == "slashed-shield.png") {
        game.shieldActive = true;
      }
      if(power == "magnet-blast.png") {
        game.magnetActive = true;
      }
      if(power == "charged-arrow.png") {
        rainlimit = 20;
        game.arrowsActive = true;
      }
      print(raincount);
      if(raincount == rainlimit){
        if(pos == 1){
          game.firstFree = true;
          if(raincount == rainlimit){
            remove = true;
          }
          game.smallActive = false;
          game.swordActive = false;
          game.shieldActive = false;
          game.eagleActive = false;
          game.magnetActive = false;
          game.arrowsActive = false;
        }
        if(pos == 2){
          game.secondFree = true;
          if(raincount == rainlimit){
            remove = true;
          }
          game.smallActive = false;
          game.swordActive = false;
          game.shieldActive = false;
          game.eagleActive = false;
          game.magnetActive = false;
          game.arrowsActive = false;
        }
        if(pos == 3){
          game.thirdFree = true;
          if(raincount == rainlimit){
            remove = true;
          }
          game.smallActive = false;
          game.swordActive = false;
          game.shieldActive = false;
          game.eagleActive = false;
          game.magnetActive = false;
          game.arrowsActive = false;
        }
      }
    }
  }
}