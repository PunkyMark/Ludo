import 'dart:math';
import 'package:fluttertest1/gameloop.dart';
import 'dart:ui';
import 'package:flame/sprite.dart';

class Player {
  List move_right_list = [0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 11.5, 12, 12.5, 13, 19.5, 20, 20.5, 21, 21.5, 22, 22.5, 23, 23.5, 24];
  List move_left_list = [26.5, 27, 27.5, 28, 28.5, 29, 29.5, 30, 30.5, 31, 37.5, 38, 38.5, 39, 45.5, 46, 46.5, 47, 47.5, 48, 48.5, 49, 49.5, 50];
  List move_up_list = [6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 39.5, 40, 40.5, 41, 41.5, 42, 42.5, 43, 43.5, 44, 50.5, 51, 51.5, 52];
  List move_down_list = [13.5, 14, 14.5, 15, 15.5, 16, 16.5, 17, 17.5, 18, 24.5, 25, 25.5, 26, 32.5, 33, 33.5, 34, 34.5, 35, 35.5, 36, 36.5, 37];
  List move_up_right_list = [5.5, 6];
  List move_up_left_list = [44.5, 45];
  List move_down_right_list = [18.5, 19];
  List move_down_left_list = [31.5, 32];
  List move_home_list = [0];
  List move_green_special = [51.5, 52, 52.5, 53, 53.5, 54, 54.5, 55, 55.5, 56, 56.5, 57];
  List move_yellow_special = [12.5, 13, 13.5, 14, 14.5, 15, 15.5, 16, 16.5, 17, 17.5, 18];
  List move_blue_special = [25.5, 26, 26.5, 27, 27.5, 28, 28.5, 29, 29.5, 30, 30.5, 31];
  List move_red_special = [38.5, 39, 39.5, 40, 40.5, 41, 41.5, 42, 42.5, 43, 43.5, 44];
  List save = [1, 9, 14, 22, 27, 35, 40, 48];
  List blocked = [];
  final LangawGame game;
  Rect playerRect;
  Paint playerPaint;
  int location = 0 ;
  double position = 0 ;
  double x;
  double y;
  Sprite player;
  int rolled = 0;
  String sprite;
  bool inHomeStrip = false;
  bool move_right = false;
  bool move_left = false;
  bool move_up = false;
  bool move_down = false;
  bool move_up_right = false;
  bool move_up_left = false;
  bool move_down_right = false;
  bool move_down_left = false;
  bool target_arrived = false;
  bool dicerolled = false;
  Offset targetLocation;
  double counter = 0;
  String color;
  double xone;
  double yone;
  int total_moved = 1;

  Player(this.game, this.position, this.x, this.y, this.sprite, this.color, this.xone, this.yone) {
    player = Sprite(sprite);
    playerRect = Rect.fromLTWH(x, y, game.raintileSize, game.raintileSize);
    if (color == 'green') {
      location = 1;
    }
    else if (color == 'yellow') {
      location = 14;
    }
    else if (color == 'blue') {
      location = 27;
    }
    else if (color == 'red') {
      location = 40;
    }
  }

  void roll(number) {
    if(dicerolled == false) {
      rolled = number;
      if(position != 0) {
        location += rolled;
        if(location >= 53){
          location -= 52;
        }
      }
      print('$color $location');
      dicerolled = true;
      print('Original $rolled');
    }
  }

  void render(Canvas c) {
    player.renderRect(c, playerRect);
  }

  void update(double t) {
    if (total_moved + rolled <= 57 && (game.blocked.contains(location) == false || blocked.contains(location))) {
      if (position != 0) {
        position += 0.5;
      }
      if (position == 53 && color != 'green') {
        position = 0.5;
      }
//      print("Counter $counter");
//      print('New $rolled');
      if (color == 'green' && move_green_special.contains(position) && total_moved + rolled >= 52) {
        inHomeStrip = true;
        x += game.playertileSize / 2;
        playerRect = playerRect.translate(game.playertileSize / 2, 0);
        counter += 0.5;
      }
      else if (color == 'yellow' && move_yellow_special.contains(position) && total_moved + rolled >= 52) {
        inHomeStrip = true;
        y += game.playertileSize / 2;
        playerRect = playerRect.translate(0, game.playertileSize / 2);
        counter += 0.5;
      }
      else if (color == 'blue' && move_blue_special.contains(position) && total_moved + rolled >= 52) {
        inHomeStrip = true;
        x -= game.playertileSize / 2;
        playerRect = playerRect.translate(-game.playertileSize / 2, 0);
        counter += 0.5;
      }
      else if (color == 'red' && move_red_special.contains(position) && total_moved + rolled >= 52) {
        inHomeStrip = true;
        y -= game.playertileSize / 2;
        playerRect = playerRect.translate(0, -game.playertileSize / 2);
        counter += 0.5;
      }
      else if (move_right_list.contains(position)) {
        x += game.playertileSize / 2;
        playerRect = playerRect.translate(game.playertileSize / 2, 0);
        counter += 0.5;
      }
      else if (move_left_list.contains(position)) {
        x -= game.playertileSize / 2;
        playerRect = playerRect.translate(-game.playertileSize / 2, 0);
        counter += 0.5;
      }
      else if (move_up_list.contains(position)) {
        y -= game.playertileSize / 2;
        playerRect = playerRect.translate(0, -game.playertileSize / 2);
        counter += 0.5;
      }
      else if (move_down_list.contains(position)) {
        y += game.playertileSize / 2;
        playerRect = playerRect.translate(0, game.playertileSize / 2);
        counter += 0.5;
      }
      else if (move_up_right_list.contains(position)) {
        y -= game.playertileSize / 2;
        x += game.playertileSize / 2;
        playerRect = playerRect.translate(game.playertileSize / 2, -game.playertileSize / 2);
        counter += 0.5;
      }
      else if (move_up_left_list.contains(position)) {
        y -= game.playertileSize / 2;
        x -= game.playertileSize / 2;
        playerRect = playerRect.translate(-game.playertileSize / 2, -game.playertileSize / 2);
        counter += 0.5;
      }
      else if (move_down_right_list.contains(position)) {
        y += game.playertileSize / 2;
        x += game.playertileSize / 2;
        playerRect = playerRect.translate(game.playertileSize / 2, game.playertileSize / 2);
        counter += 0.5;
      }
      else if (move_down_left_list.contains(position)) {
        y += game.playertileSize / 2;
        x -= game.playertileSize / 2;
        playerRect = playerRect.translate(-game.playertileSize / 2, game.playertileSize / 2);
        counter += 0.5;
      }
      else if (move_home_list.contains(position)) {
        if (rolled != 6) {
          counter = 0;
          rolled = 0;
          dicerolled = false;
        }
        else {
          double start_x = x - xone;
          double start_y = y - yone;
          playerRect = playerRect.translate(-start_x, -start_y);
          if (color == 'green') {
            position = 1;
          }
          else if (color == 'yellow') {
            position = 14;
          }
          else if (color == 'blue') {
            position = 27;
          }
          else if (color == 'red') {
            position = 40;
          }
          counter = 0;
          rolled = 0;
          dicerolled = false;
          x = xone;
          y = yone;
        }
      }
    }
    else if(total_moved + rolled > 57){
      counter = 0;
      rolled = 0;
      dicerolled = false;
    }
    else if(total_moved == 57){
      counter = 0;
      rolled = 0;
      dicerolled = false;
      total_moved = 1;
    }
    else{
      counter = 0;
      rolled = 0;
      dicerolled = false;
    }
  }
}