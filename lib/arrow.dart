import 'dart:ui';
import 'package:fluttertest1/gameloop.dart';// Access to screen size
import 'package:fluttertest1/rain.dart';
import 'package:fluttertest1/view.dart';
import 'package:flame/sprite.dart';
import 'dart:math' as math;
import 'package:fluttertest1/render_power.dart';

class Arrow{
  final LangawGame game;
  bool up = true;
  Paint paint = Paint();
  Color colorWhite = Color(0x57606f);
  double opacity = 0.8;
  double width = 0;
  double height;
  double x = 0;
  double y = 0;
  double strokeWidth = 5;
  Rect rect;
  Sprite arrow;
  Sprite arrow90;

  Arrow(this.game) {
    width = game.tileSize * 0.64 * 1.2;
    height = game.tileSize * 0.73 * 1.2;
    rect = Rect.fromLTWH(
      x,
      y,
      width,
      height,
    );
    arrow = Sprite('arrow.png');
    arrow90 = Sprite('arrow90.png');
  }

  void render(Canvas c) {
    if (game.activeMode == Mode.twoPlayer || game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer) {
      if (game.dice_green.choosePlayer == false && game.dice_green.isTurn == true) {
        x = ((game.screenSize.width - game.tileSize * 8 + game.playertileSize) / 2) ;
        y = (game.screenSize.height - game.tileSize * 14 + game.tileSize * 0.73 * 1.7);
        rect = Rect.fromLTWH(x, y, width, height);
        arrow90.renderRect(c, rect);
      }
    }
    if (game.activeMode == Mode.fourPlayer) {
      if (game.dice_yellow.choosePlayer == false && game.dice_yellow.isTurn == true) {
        x = (game.screenSize.width + game.tileSize * 6 + game.playertileSize) / 2;
        y = (game.screenSize.height - game.tileSize * 14 + game.tileSize * 0.73 * 1.7);
        rect = Rect.fromLTWH(x, y, width, height);
        arrow90.renderRect(c, rect);
      }
    }
    if (game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer) {
      if (game.dice_red.choosePlayer == false && game.dice_red.isTurn == true) {
        x = ((game.screenSize.width - game.tileSize * 8 + game.playertileSize) / 2) ;
        y = (game.screenSize.height - game.tileSize * 3.5 - game.tileSize * 0.73 * 1.3);
        rect = Rect.fromLTWH(x, y, width, height);
        arrow.renderRect(c, rect);
      }
    }
    if (game.activeMode == Mode.twoPlayer || game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer) {
      if (game.dice_blue.choosePlayer == false && game.dice_blue.isTurn == true) {
        x = (game.screenSize.width + game.tileSize * 6 + game.playertileSize) / 2;
        y = (game.screenSize.height - game.tileSize * 3.5 - game.tileSize * 0.73 * 1.3);
        rect = Rect.fromLTWH(x, y, width, height);
        arrow.renderRect(c, rect);
      }
    }
    c.save();
  }

  void update(double t) {
    if((game.activeMode == Mode.fourPlayer)) {
      if(game.dice_green.choosePlayer == false && game.dice_green.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
     else if(game.dice_yellow.choosePlayer == false && game.dice_yellow.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
      else if(game.dice_red.choosePlayer == false && game.dice_red.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
      else if(game.dice_blue.choosePlayer == false && game.dice_blue.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
      else {
        height = game.tileSize * 0.73 * 1.2;
        up = true;
      }
    }
    else if((game.activeMode == Mode.threePlayer)) {
      if(game.dice_green.choosePlayer == false && game.dice_green.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
      else if(game.dice_red.choosePlayer == false && game.dice_red.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
      else if(game.dice_blue.choosePlayer == false && game.dice_blue.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
      else {
        height = game.tileSize * 0.73 * 1.2;
        up = true;
      }
    }
    else if((game.activeMode == Mode.twoPlayer)) {
      if(game.dice_green.choosePlayer == false && game.dice_green.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
      else if(game.dice_blue.choosePlayer == false && game.dice_blue.isTurn == true) {
        if (height <= game.tileSize * 0.73 * 1.5 && up) {
          height += (t * 20);
        }
        if (height >= game.tileSize * 0.73 * 1.5) {
          up = false;
        }
        if (height >= game.tileSize * 0.73 * 1.2 && up == false) {
          height -= (t * 20);
        }
        if (height <= game.tileSize * 0.73 * 1.2) {
          up = true;
        }
      }
      else {
        height = game.tileSize * 0.73 * 1.2;
        up = true;
      }
    }
  }
}