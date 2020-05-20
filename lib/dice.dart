import 'dart:ui';
import 'package:flame/sprite.dart';
import 'dart:math';
import 'package:fluttertest1/gameloop.dart';

class Dice {
  bool isTurn;
  bool isMove;
  bool choosePlayer = false;
  int rolled = 0;
  final LangawGame game;
  Rect rect;
  double x;
  double y;
  String color;
  Sprite sprite;
  double diceCount = 0;
  bool isRolled = false;
  List<Sprite> roll = [Sprite('d1.png'), Sprite('d2.png'), Sprite('d3.png'), Sprite('d4.png'), Sprite('d5.png'), Sprite('d6.png'), Sprite('d7.png'), Sprite('d8.png'), Sprite('d9.png'), Sprite('d10.png'), Sprite('d11.png'), Sprite('d12.png')];

  Dice(this.game, this.x, this.y, this.color, this.isTurn) {
    rect = Rect.fromLTWH(
      x,
      y,
      game.playertileSize * 2,
      game.playertileSize * 2,
    );
    sprite = Sprite('d13.png');
  }

  void render(Canvas c) {
    c.save();
    if(isRolled) {
      roll[diceCount.toInt()].renderRect(c, rect);
      diceCount += 0.5;
      if(diceCount >= 12){
        isRolled = false;
        diceCount = 0;
        Random random = new Random();
        int randomNumber = random.nextInt(6) + 1;
        rolled = randomNumber;
        if(rolled == 1){
          sprite = Sprite('d3.png');
        }
        else if(rolled == 2){
          sprite = Sprite('d9.png');
        }
        else if(rolled == 3){
          sprite = Sprite('d1.png');
        }
        else if(rolled == 4){
          sprite = Sprite('d13.png');
        }
        else if(rolled == 5){
          sprite = Sprite('d4.png');
        }
        else if(rolled == 6){
          sprite = Sprite('d7.png');
        }
        choosePlayer = true;
      }
    }
 else{
   sprite.renderRect(c, rect);
    }
    c.restore();
  }

  void update(double t){
  }
}