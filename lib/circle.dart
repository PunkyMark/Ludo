import 'dart:ui';
import 'package:fluttertest1/gameloop.dart';// Access to screen size
import 'package:fluttertest1/rain.dart';
import 'package:fluttertest1/view.dart';
import 'package:flame/sprite.dart';
import 'dart:math' as math;
import 'package:fluttertest1/render_power.dart';

class Circle{
  final LangawGame game;
  bool up = true;
  double x;
  double y;
  Paint paint = Paint();
  Color colorWhite = Color(0x57606f);
  double opacity = 0.8;
  double size;
  double strokeWidth = 5;
  String color;
  int player_number;

  Circle(this.game, this.color, this.player_number) {
    size = game.playertileSize / 2;
    paint.color = colorWhite.withOpacity(opacity);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = strokeWidth;
  }

  void render(Canvas c) {
    if (game.activeMode == Mode.twoPlayer || game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer) {
      if (color == 'green' && game.dice_green.choosePlayer &&
          player_number == 1 &&
          game.player_green_1.total_moved + game.dice_green.rolled <= 57 &&
          (game.player_green_1.position != 0 || game.dice_green.rolled == 6) && ((game.blocked.contains(game.player_green_1.location + game.dice_green.rolled) == false && game.player_green_1.location + game.dice_green.rolled <= 52) || ((game.blocked.contains(game.player_green_1.location + game.dice_green.rolled - 52) == false && game.player_green_1.location + game.dice_green.rolled >= 53))) && (game.player_green_1.position != 0 || game.blocked.contains(1) == false) && (game.blocked_logic(game.barrier, game.dice_green.rolled, game.player_green_1.location))) {
        c.drawCircle(Offset(
            game.player_green_1.x + (game.playertileSize * 0.5) -
                game.centerplayer,
            game.player_green_1.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'green' && game.dice_green.choosePlayer &&
          player_number == 2 &&
          (game.player_green_2.position != 0 || game.dice_green.rolled == 6) &&
          game.player_green_2.total_moved + game.dice_green.rolled <= 57 && ((game.blocked.contains(game.player_green_2.location + game.dice_green.rolled) == false && game.player_green_2.location + game.dice_green.rolled <= 52) || ((game.blocked.contains(game.player_green_2.location + game.dice_green.rolled - 52) == false && game.player_green_2.location + game.dice_green.rolled >= 53))) && (game.player_green_2.position != 0 || game.blocked.contains(1) == false) && (game.blocked_logic(game.barrier, game.dice_green.rolled, game.player_green_2.location))) {
        c.drawCircle(Offset(
            game.player_green_2.x + (game.playertileSize * 0.5) -
                game.centerplayer,
            game.player_green_2.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'green' && game.dice_green.choosePlayer &&
          player_number == 3 &&
          (game.player_green_3.position != 0 || game.dice_green.rolled == 6) &&
          game.player_green_3.total_moved + game.dice_green.rolled <= 57 && ((game.blocked.contains(game.player_green_3.location + game.dice_green.rolled) == false && game.player_green_3.location + game.dice_green.rolled <= 52) || ((game.blocked.contains(game.player_green_3.location + game.dice_green.rolled - 52) == false && game.player_green_3.location + game.dice_green.rolled >= 53))) && (game.player_green_3.position != 0 || game.blocked.contains(1) == false) && (game.blocked_logic(game.barrier, game.dice_green.rolled, game.player_green_3.location))) {
        c.drawCircle(Offset(
            game.player_green_3.x + (game.playertileSize * 0.5) -
                game.centerplayer,
            game.player_green_3.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'green' && game.dice_green.choosePlayer &&
          player_number == 4 &&
          (game.player_green_4.position != 0 || game.dice_green.rolled == 6) &&
          game.player_green_4.total_moved + game.dice_green.rolled <= 57 && ((game.blocked.contains(game.player_green_4.location + game.dice_green.rolled) == false && game.player_green_4.location + game.dice_green.rolled <= 52) || ((game.blocked.contains(game.player_green_4.location + game.dice_green.rolled - 52) == false && game.player_green_4.location + game.dice_green.rolled >= 53))) && (game.player_green_4.position != 0 || game.blocked.contains(1) == false) && (game.blocked_logic(game.barrier, game.dice_green.rolled, game.player_green_4.location))) {
        c.drawCircle(Offset(
            game.player_green_4.x + (game.playertileSize * 0.5) -
                game.centerplayer,
            game.player_green_4.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
    }
    if (game.activeMode == Mode.fourPlayer) {
      if (color == 'yellow' && game.dice_yellow.choosePlayer &&
          player_number == 1 && (game.player_yellow_1.position != 0 ||
          game.dice_yellow.rolled == 6) &&
          game.player_yellow_1.total_moved + game.dice_yellow.rolled <= 57 && ((game.blocked.contains(game.player_yellow_1.location + game.dice_yellow.rolled) == false && game.player_yellow_1.location + game.dice_yellow.rolled <= 52) || ((game.blocked.contains(game.player_yellow_1.location + game.dice_yellow.rolled - 52) == false && game.player_yellow_1.location + game.dice_yellow.rolled >= 53))) && (game.player_yellow_1.position != 0 || game.blocked.contains(14) == false) && (game.blocked_logic(game.barrier, game.dice_yellow.rolled, game.player_yellow_1.location))) {
        c.drawCircle(Offset(
            game.player_yellow_1.x + (game.playertileSize * 0.5) -
                game.centerplayer,
            game.player_yellow_1.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'yellow' && game.dice_yellow.choosePlayer &&
          player_number == 2 && (game.player_yellow_2.position != 0 ||
          game.dice_yellow.rolled == 6) &&
          game.player_yellow_2.total_moved + game.dice_yellow.rolled <= 57 && ((game.blocked.contains(game.player_yellow_2.location + game.dice_yellow.rolled) == false && game.player_yellow_2.location + game.dice_yellow.rolled <= 52) || ((game.blocked.contains(game.player_yellow_2.location + game.dice_yellow.rolled - 52) == false && game.player_yellow_2.location + game.dice_yellow.rolled >= 53))) && (game.player_yellow_2.position != 0 || game.blocked.contains(14) == false) && (game.blocked_logic(game.barrier, game.dice_yellow.rolled, game.player_yellow_2.location))) {
        c.drawCircle(Offset(
            game.player_yellow_2.x + (game.playertileSize * 0.5) -
                game.centerplayer,
            game.player_yellow_2.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'yellow' && game.dice_yellow.choosePlayer &&
          player_number == 3 && (game.player_yellow_3.position != 0 ||
          game.dice_yellow.rolled == 6) &&
          game.player_yellow_3.total_moved + game.dice_yellow.rolled <= 57 && ((game.blocked.contains(game.player_yellow_3.location + game.dice_yellow.rolled) == false && game.player_yellow_3.location + game.dice_yellow.rolled <= 52) || ((game.blocked.contains(game.player_yellow_3.location + game.dice_yellow.rolled - 52) == false && game.player_yellow_3.location + game.dice_yellow.rolled >= 53))) && (game.player_yellow_3.position != 0 || game.blocked.contains(14) == false) && (game.blocked_logic(game.barrier, game.dice_yellow.rolled, game.player_yellow_3.location))) {
        c.drawCircle(Offset(
            game.player_yellow_3.x + (game.playertileSize * 0.5) -
                game.centerplayer,
            game.player_yellow_3.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'yellow' && game.dice_yellow.choosePlayer &&
          player_number == 4 && (game.player_yellow_4.position != 0 ||
          game.dice_yellow.rolled == 6) &&
          game.player_yellow_4.total_moved + game.dice_yellow.rolled <= 57 && ((game.blocked.contains(game.player_yellow_4.location + game.dice_yellow.rolled) == false && game.player_yellow_4.location + game.dice_yellow.rolled <= 52) || ((game.blocked.contains(game.player_yellow_4.location + game.dice_yellow.rolled - 52) == false && game.player_yellow_4.location + game.dice_yellow.rolled >= 53))) && (game.player_yellow_4.position != 0 || game.blocked.contains(14) == false) && (game.blocked_logic(game.barrier, game.dice_yellow.rolled, game.player_yellow_4.location))) {
        c.drawCircle(Offset(
            game.player_yellow_4.x + (game.playertileSize * 0.5) -
                game.centerplayer,
            game.player_yellow_4.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
    }
    if (game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer) {
      if (color == 'red' && game.dice_red.choosePlayer && player_number == 1 &&
          (game.player_red_1.position != 0 || game.dice_red.rolled == 6) &&
          game.player_red_1.total_moved + game.dice_red.rolled <= 57 && ((game.blocked.contains(game.player_red_1.location + game.dice_red.rolled) == false && game.player_red_1.location + game.dice_red.rolled <= 52) || ((game.blocked.contains(game.player_red_1.location + game.dice_red.rolled - 52) == false && game.player_red_1.location + game.dice_red.rolled >= 53))) && (game.player_red_1.position != 0 || game.blocked.contains(40) == false) && (game.blocked_logic(game.barrier, game.dice_red.rolled, game.player_red_1.location))) {
        c.drawCircle(Offset(game.player_red_1.x + (game.playertileSize * 0.5) -
            game.centerplayer,
            game.player_red_1.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'red' && game.dice_red.choosePlayer && player_number == 2 &&
          (game.player_red_2.position != 0 || game.dice_red.rolled == 6) &&
          game.player_red_2.total_moved + game.dice_red.rolled <= 57 && ((game.blocked.contains(game.player_red_2.location + game.dice_red.rolled) == false && game.player_red_2.location + game.dice_red.rolled <= 52) || ((game.blocked.contains(game.player_red_2.location + game.dice_red.rolled - 52) == false && game.player_red_2.location + game.dice_red.rolled >= 53))) && (game.player_red_2.position != 0 || game.blocked.contains(40) == false) && (game.blocked_logic(game.barrier, game.dice_red.rolled, game.player_red_2.location))) {
        c.drawCircle(Offset(game.player_red_2.x + (game.playertileSize * 0.5) -
            game.centerplayer,
            game.player_red_2.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'red' && game.dice_red.choosePlayer && player_number == 3 &&
          (game.player_red_3.position != 0 || game.dice_red.rolled == 6) &&
          game.player_red_3.total_moved + game.dice_red.rolled <= 57 && ((game.blocked.contains(game.player_red_3.location + game.dice_red.rolled) == false && game.player_red_3.location + game.dice_red.rolled <= 52) || ((game.blocked.contains(game.player_red_3.location + game.dice_red.rolled - 52) == false && game.player_red_3.location + game.dice_red.rolled >= 53))) && (game.player_red_3.position != 0 || game.blocked.contains(40) == false) && (game.blocked_logic(game.barrier, game.dice_red.rolled, game.player_red_3.location))) {
        c.drawCircle(Offset(game.player_red_3.x + (game.playertileSize * 0.5) -
            game.centerplayer,
            game.player_red_3.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'red' && game.dice_red.choosePlayer && player_number == 4 &&
          (game.player_red_4.position != 0 || game.dice_red.rolled == 6) &&
          game.player_red_4.total_moved + game.dice_red.rolled <= 57 && ((game.blocked.contains(game.player_red_4.location + game.dice_red.rolled) == false && game.player_red_4.location + game.dice_red.rolled <= 52) || ((game.blocked.contains(game.player_red_4.location + game.dice_red.rolled - 52) == false && game.player_red_4.location + game.dice_red.rolled >= 53))) && (game.player_red_4.position != 0 || game.blocked.contains(40) == false) && (game.blocked_logic(game.barrier, game.dice_red.rolled, game.player_red_4.location))) {
        c.drawCircle(Offset(game.player_red_4.x + (game.playertileSize * 0.5) -
            game.centerplayer,
            game.player_red_4.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
    }
    if (game.activeMode == Mode.twoPlayer || game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer) {
      if (color == 'blue' && game.dice_blue.choosePlayer &&
          player_number == 1 &&
          (game.player_blue_1.position != 0 || game.dice_blue.rolled == 6) &&
          game.player_blue_1.total_moved + game.dice_blue.rolled <= 57 && ((game.blocked.contains(game.player_blue_1.location + game.dice_blue.rolled) == false && game.player_blue_1.location + game.dice_blue.rolled <= 52) || ((game.blocked.contains(game.player_blue_1.location + game.dice_blue.rolled - 52) == false && game.player_blue_1.location + game.dice_blue.rolled >= 53))) && (game.player_blue_1.position != 0 || game.blocked.contains(27) == false) && (game.blocked_logic(game.barrier, game.dice_blue.rolled, game.player_blue_1.location))) {
        c.drawCircle(Offset(game.player_blue_1.x + (game.playertileSize * 0.5) -
            game.centerplayer,
            game.player_blue_1.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'blue' && game.dice_blue.choosePlayer &&
          player_number == 2 &&
          (game.player_blue_2.position != 0 || game.dice_blue.rolled == 6) &&
          game.player_blue_2.total_moved + game.dice_blue.rolled <= 57 && ((game.blocked.contains(game.player_blue_2.location + game.dice_blue.rolled) == false && game.player_blue_2.location + game.dice_blue.rolled <= 52) || ((game.blocked.contains(game.player_blue_2.location + game.dice_blue.rolled - 52) == false && game.player_blue_2.location + game.dice_blue.rolled >= 53))) && (game.player_blue_2.position != 0 || game.blocked.contains(27) == false) && (game.blocked_logic(game.barrier, game.dice_blue.rolled, game.player_blue_2.location))) {
        c.drawCircle(Offset(game.player_blue_2.x + (game.playertileSize * 0.5) -
            game.centerplayer,
            game.player_blue_2.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'blue' && game.dice_blue.choosePlayer &&
          player_number == 3 &&
          (game.player_blue_3.position != 0 || game.dice_blue.rolled == 6) &&
          game.player_blue_3.total_moved + game.dice_blue.rolled <= 57 && ((game.blocked.contains(game.player_blue_3.location + game.dice_blue.rolled) == false && game.player_blue_3.location + game.dice_blue.rolled <= 52) || ((game.blocked.contains(game.player_blue_3.location + game.dice_blue.rolled - 52) == false && game.player_blue_3.location + game.dice_blue.rolled >= 53))) && (game.player_blue_3.position != 0 || game.blocked.contains(27) == false) && (game.blocked_logic(game.barrier, game.dice_blue.rolled, game.player_blue_3.location))) {
        c.drawCircle(Offset(game.player_blue_3.x + (game.playertileSize * 0.5) -
            game.centerplayer,
            game.player_blue_3.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
      if (color == 'blue' && game.dice_blue.choosePlayer &&
          player_number == 4 &&
          (game.player_blue_4.position != 0 || game.dice_blue.rolled == 6) &&
          game.player_blue_4.total_moved + game.dice_blue.rolled <= 57 && ((game.blocked.contains(game.player_blue_4.location + game.dice_blue.rolled) == false && game.player_blue_4.location + game.dice_blue.rolled <= 52) || ((game.blocked.contains(game.player_blue_4.location + game.dice_blue.rolled - 52) == false && game.player_blue_4.location + game.dice_blue.rolled >= 53))) && (game.player_blue_4.position != 0 || game.blocked.contains(27) == false) && (game.blocked_logic(game.barrier, game.dice_blue.rolled, game.player_blue_4.location))) {
        c.drawCircle(Offset(game.player_blue_4.x + (game.playertileSize * 0.5) -
            game.centerplayer,
            game.player_blue_4.y + (game.playertileSize * 0.5) -
                game.centerplayer), size, paint);
      }
    }
    c.save();
  }

  void update(double t) {
    if(color == 'green' && (game.activeMode == Mode.twoPlayer || game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer)) {
      if(game.dice_green.choosePlayer) {
        if (size <= game.playertileSize / 2 && up) {
          size += (t * 10);
        }
        if (size >= game.playertileSize / 2) {
          up = false;
        }
        if (size >= game.playertileSize / 4 && up == false) {
          size -= (t * 10);
        }
        if (size <= game.playertileSize / 4) {
          up = true;
        }
      }
      else {
        size = game.playertileSize / 4;
        up = true;
      }
    }
    else if(color == 'yellow' && (game.activeMode == Mode.fourPlayer)){
      if(game.dice_yellow.choosePlayer) {
        if (size <= game.playertileSize / 2 && up) {
          size += (t * 10);
        }
        if (size >= game.playertileSize / 2) {
          up = false;
        }
        if (size >= game.playertileSize / 4 && up == false) {
          size -= (t * 10);
        }
        if (size <= game.playertileSize / 4) {
          up = true;
        }
      }
      else {
        size = game.playertileSize / 4;
        up = true;
      }
    }
    else if(color == 'red' && (game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer)){
      if(game.dice_red.choosePlayer) {
        if (size <= game.playertileSize / 2 && up) {
          size += (t * 10);
        }
        if (size >= game.playertileSize / 2) {
          up = false;
        }
        if (size >= game.playertileSize / 4 && up == false) {
          size -= (t * 10);
        }
        if (size <= game.playertileSize / 4) {
          up = true;
        }
      }
      else {
        size = game.playertileSize / 4;
        up = true;
      }
    }
    else if(color == 'blue' && (game.activeMode == Mode.twoPlayer || game.activeMode == Mode.threePlayer || game.activeMode == Mode.fourPlayer)){
      if(game.dice_blue.choosePlayer) {
        if (size <= game.playertileSize / 2 && up) {
          size += (t * 10);
        }
        if (size >= game.playertileSize / 2) {
          up = false;
        }
        if (size >= game.playertileSize / 4 && up == false) {
          size -= (t * 10);
        }
        if (size <= game.playertileSize / 4) {
          up = true;
        }
      }
      else {
        size = game.playertileSize / 4;
        up = true;
      }
    }
    else {
      size = game.playertileSize / 4;
      up = true;
    }
  }
}