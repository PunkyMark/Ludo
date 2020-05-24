import 'dart:ui'; // Used to access canvas and size
import 'package:flame/game.dart';// Game loop library
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest1/fly.dart';
import 'package:fluttertest1/ads.dart';
import 'dart:math';
import 'package:fluttertest1/dice.dart';
import 'package:flutter/gestures.dart';
import 'package:fluttertest1/rain.dart';
import 'package:flame/util.dart';
import 'package:fluttertest1/score-display.dart';
import 'package:fluttertest1/view.dart';
import 'package:fluttertest1/home-view.dart';
import 'package:fluttertest1/lost-view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertest1/highscore.dart';
import 'package:fluttertest1/gems.dart';
import 'package:fluttertest1/shop.dart';
import 'package:fluttertest1/start-button.dart';
import 'package:fluttertest1/circle.dart';
import 'package:fluttertest1/shopping.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertest1/shoptext.dart';
import 'package:fluttertest1/magnet.dart';
import 'package:fluttertest1/shield.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:fluttertest1/heart.dart';
import 'package:fluttertest1/swords.dart';
import 'package:fluttertest1/rupee.dart';
import 'package:fluttertest1/arrows.dart';
import 'package:fluttertest1/eagle.dart';
import 'package:fluttertest1/armor.dart';
import 'package:fluttertest1/beanstalk.dart';
import 'package:fluttertest1/homebutton.dart';
import 'package:fluttertest1/back_button.dart';
import 'package:fluttertest1/heart-pixel.dart';
import 'package:fluttertest1/render_power.dart';
import 'package:fluttertest1/tuts.dart';
import 'package:fluttertest1/tap.dart';
import 'package:fluttertest1/image.dart';
import 'package:fluttertest1/credits.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:fluttertest1/player.dart';
import 'package:fluttertest1/arrow.dart';
import 'package:fluttertest1/board.dart';

class LangawGame extends Game {
  List blocked = [];
  int green_six_counter = 0;
  int yellow_six_counter = 0;
  int red_six_counter = 0;
  int blue_six_counter = 0;
  Offset green_home_1;
  Offset green_home_2;
  Offset green_home_3;
  Offset green_home_4;
  Offset yellow_home_1;
  Offset yellow_home_2;
  Offset yellow_home_3;
  Offset yellow_home_4;
  Offset red_home_1;
  Offset red_home_2;
  Offset red_home_3;
  Offset red_home_4;
  Offset blue_home_1;
  Offset blue_home_2;
  Offset blue_home_3;
  Offset blue_home_4;
  Offset green_one;
  Offset yellow_one;
  Offset blue_one;
  Offset red_one;
  ShopDisplay getGreen;
  Tap tap;
  Back back;
  Beanstalk beanstalk;
  Eagle eagle;
  Armor armor;
  Arrows arrows;
  Rupee rupee;
  Swords swords;
  Ads ads;
  Arrow arrow;
  Dice dice_green;
  Dice dice_yellow;
  Dice dice_red;
  Dice dice_blue;
  int increasegems = 1;
  Magnet magnet;
  Shield shield;
  Heart heart;
  HighscoreDisplay highscoreDisplay;
  GemsDisplay gemsdisplay;
  List<Powers> power_up;
  List<ShoppingView> shoppingView;
  ShopDisplay shopDisplay;
  ShopDisplay tutsDisplay;
  ShopDisplay gemDisplay;
  ShopDisplay whiteDisplay;
  ShopDisplay powerDisplay;
  ShopDisplay warningDisplay;
  ShopDisplay creditsDisplay;
  ShopDisplay getGreen2;
  ShopDisplay t1;
  ShopDisplay t2;
  ShopDisplay t3;
  ShopDisplay t4;
  ShopDisplay t5;
  ShopDisplay t6;
  ShopDisplay t7;
  Shop shop;
  Images gemGrab;
  Tuts tuts;
  Credits credits;
  final SharedPreferences storage;
  final SharedPreferences gemsstorage;
  final SharedPreferences gemsTrue;
  final SharedPreferences magnetTrue;
  final SharedPreferences heartTrue;
  final SharedPreferences shieldTrue;
  final SharedPreferences arrowsTrue;
  final SharedPreferences swordsTrue;
  final SharedPreferences armorTrue;
  final SharedPreferences vineTrue;
  final SharedPreferences eagleTrue;
  final SharedPreferences tutorialDone;
  View activeView;
  Mode activeMode;
  StartButton startButton;
  Board board;
  HomeButton homeButton;
  LostView lostView;
  HomeView homeView;
  Size screenSize;
  double tileSize;
  double playertileSize;
  double centerplayer;
  double btileSize;
  double raintileSize;
  Fly fly;
  int homeamountRain = 15;
  int amountRain = 1;
  int temAmountRain = 5;
  List<Rain> rains;
  List<Player> players;
  List<Rain> homerains;
  List<Circle> circle;
  int score;
  ScoreDisplay scoreDisplay;
//                      //

  Player player_green_1;
  Player player_green_2;
  Player player_green_3;
  Player player_green_4;
  Player player_yellow_1;
  Player player_yellow_2;
  Player player_yellow_3;
  Player player_yellow_4;
  Player player_red_1;
  Player player_red_2;
  Player player_red_3;
  Player player_red_4;
  Player player_blue_1;
  Player player_blue_2;
  Player player_blue_3;
  Player player_blue_4;

//                      //
  bool buy;
  bool goOn;
  int counter;
  bool notHome = false;
  bool magnet_bought = false;
  bool shield_bought = false;
  bool heart_bought = false;
  bool swords_bought = false;
  bool rupee_bought = false;
  bool arrows_bought = false;
  bool armor_bought = false;
  bool eagle_bought = false;
  bool beanstalk_bought = false;
  List powers = [];
  var power;
  double powerx;
  bool heart_pixel_add = false;
  bool heart_add = true;
  bool firstFree = true;
  bool secondFree = true;
  bool thirdFree = true;
  bool swordActive = false;
  bool smallActive = false;
  bool shieldActive = false;
  bool eagleActive = false;
  bool magnetActive = false;
  bool arrowsActive = false;
  bool tut;
  bool whiteObtained = false;
  bool greentext = false;
  bool greentext2 = false;
  bool credittext = false;
  bool poweractive = false;
  bool reduceRain = false;
  bool noRain = false;
  bool tapRDone = false;
  bool tapLDone = false;
  String text = '';
  String subtext = '';

  LangawGame(this.storage, this.gemsstorage, this.magnetTrue, this.gemsTrue,
      this.heartTrue, this.shieldTrue, this.arrowsTrue, this.swordsTrue,
      this.armorTrue, this.vineTrue, this.eagleTrue, this.tutorialDone) {
    initialize();
  }

  void initialize() async {
    shoppingView = List<ShoppingView>();
    power_up = List<Powers>();
    homerains = List<Rain>();
    circle = List<Circle>();
    rains = List<Rain>();
    players = List<Player>();
    resize(await Flame.util.initialDimensions());
    green_home_1 = Offset(playertileSize * 2 + centerplayer * 3.5, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer);
    green_home_2 = Offset(playertileSize * 3.4 + centerplayer * 3, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer);
    green_home_3 = Offset(playertileSize * 3.4 + centerplayer * 3, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer);
    green_home_4 = Offset(playertileSize * 2 + centerplayer * 3.5, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer);
    yellow_home_1 = Offset(playertileSize * 10.2 + centerplayer * 3.5, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer);
    yellow_home_2 = Offset(playertileSize * 11.55 + centerplayer * 3.25, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer);
    yellow_home_3 = Offset(playertileSize * 10.2 + centerplayer * 3.5, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer);
    yellow_home_4 = Offset(playertileSize * 11.55 + centerplayer * 3.25, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer);
    red_home_1 = Offset(playertileSize * 2 + centerplayer * 3.5, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer);
    red_home_2 = Offset(playertileSize * 3.4 + centerplayer * 3, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer);
    red_home_3 = Offset(playertileSize * 2 + centerplayer * 3.5, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer);
    red_home_4 = Offset(playertileSize * 3.4 + centerplayer * 3, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer);
    blue_home_1 = Offset(playertileSize * 10.2 + centerplayer * 3.5, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer);
    blue_home_2 = Offset(playertileSize * 11.55 + centerplayer * 3.25, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer);
    blue_home_3 = Offset(playertileSize * 10.2 + centerplayer * 3.5, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer);
    blue_home_4 = Offset(playertileSize * 11.55 + centerplayer * 3.25, ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer);
    green_one = Offset((playertileSize * 1 + centerplayer), (((screenSize.height - tileSize * 9) / 2) + (playertileSize * 6) + centerplayer));
    yellow_one = Offset((playertileSize * 8 + centerplayer), (((screenSize.height - tileSize * 9) / 2) + (playertileSize * 1) + centerplayer));
    blue_one = Offset((playertileSize * 13 + centerplayer), (((screenSize.height - tileSize * 9) / 2) + (playertileSize * 8) + centerplayer));
    red_one = Offset((playertileSize * 6 + centerplayer), (((screenSize.height - tileSize * 9) / 2) + (playertileSize * 13) + centerplayer));
    getGreen = ShopDisplay(this, 20, 0xff979797);
    score = 0;
    ads = Ads(this, -0.6, 10);
    scoreDisplay = ScoreDisplay(this);
    activeMode = Mode.fourPlayer;
    activeView = View.home;
//    spawnFly();
    spawnPlayer();
    spawnDice();
    spawnCircle();
//    circle = Circle(this);
    lostView = LostView(this);
    homeView = HomeView(this);
    arrow = Arrow(this);
    highscoreDisplay = HighscoreDisplay(this);
    gemsdisplay = GemsDisplay(this);
    startButton = StartButton(this);
    board = Board(this);
    homeButton = HomeButton(this);
    tutsDisplay = ShopDisplay(this, 30, 0xffffffff);
    gemDisplay = ShopDisplay(this, 24, 0xffffffff);
    whiteDisplay = ShopDisplay(this, 24, 0xffffffff);

    getGreen2 = ShopDisplay(this, 20, 0xff979797);
    t1 = ShopDisplay(this, 20, 0xffffffff);
    t2 = ShopDisplay(this, 19, 0xffffffff);
    t3 = ShopDisplay(this, 20, 0xffffffff);
    t4 = ShopDisplay(this, 19, 0xffffffff);
    t5 = ShopDisplay(this, 19, 0xffffffff);
    t6 = ShopDisplay(this, 19, 0xffffffff);
    t7 = ShopDisplay(this, 19, 0xffffffff);
    shopDisplay = ShopDisplay(this, 30, 0xffffffff);
    powerDisplay = ShopDisplay(this, 24, 0xffffffff);
    warningDisplay = ShopDisplay(this, 24, 0xffffffff);
    creditsDisplay = ShopDisplay(this, 30, 0xffffffff);
    gemGrab = Images(this, 'gem.png', 1.7, 5.25, 6, 10.66662);
    tap = Tap();
    credits = Credits(this);
    shop = Shop(this);
    tuts = Tuts(this);
    back = Back(this);
    loadShop();
    if (tutorialDone.getBool('tut') == null || tutorialDone.getBool('tut') == false) {
      tutorialDone.setBool('tut', false);
      tut = false;
    }
    if (tutorialDone.getBool('tut') == true){
      tutorialDone.setBool('tut', true);
      tut = true;
    }
    if (magnetTrue.getBool('magnet') == null) {
      magnetTrue.setBool('magnet', false);
    }
    if (magnetTrue.getBool('magnet') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'magnet') {
          shoppingview.bought = true;
          powers.add('magnet-blast.png');
          magnet_bought = true;
          magnet = Magnet(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
    if (shieldTrue.getBool('shield') == null) {
      shieldTrue.setBool('shield', false);
    }
    if (shieldTrue.getBool('shield') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'shield') {
          shoppingview.bought = true;
          powers.add('slashed-shield.png');
          shield_bought = true;
          shield = Shield(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
    if (heartTrue.getBool('heart') == null) {
      heartTrue.setBool('heart', false);
    }
    if (heartTrue.getBool('heart') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'heart') {
          shoppingview.bought = true;
          heart_pixel_add = true;
          fly.extra_live = true;
          heart_bought = true;
          heart = Heart(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
    if (swordsTrue.getBool('swords') == null) {
      swordsTrue.setBool('swords', false);
    }
    if (swordsTrue.getBool('swords') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'swords') {
          shoppingview.bought = true;
          powers.add('all-for-one.png');
          swords_bought = true;
          swords = Swords(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
    if (gemsTrue.getBool('rupee') == null) {
      gemsTrue.setBool('rupee', false);
    }
    if (gemsTrue.getBool('rupee') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'rupee') {
          shoppingview.bought = true;
          increasegems = 2;
          rupee_bought = true;
          rupee = Rupee(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
    if (arrowsTrue.getBool('arrows') == null) {
      arrowsTrue.setBool('arrows', false);
    }
    if (arrowsTrue.getBool('arrows') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'arrows') {
          shoppingview.bought = true;
          powers.add('charged-arrow.png');
          arrows_bought = true;
          arrows = Arrows(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
    if (armorTrue.getBool('armor') == null) {
      armorTrue.setBool('armor', false);
    }
    if (armorTrue.getBool('armor') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'armor') {
          shoppingview.bought = true;
          powers.add('chest-armor.png');
          armor_bought = true;
          armor = Armor(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
    if (eagleTrue.getBool('eagle') == null) {
      eagleTrue.setBool('eagle', false);
    }
    if (eagleTrue.getBool('eagle') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'eagle') {
          shoppingview.bought = true;
          powers.add('eagle-emblem.png');
          eagle_bought = true;
          eagle = Eagle(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
    if (vineTrue.getBool('beanstalk') == null) {
      vineTrue.setBool('beanstalk', false);
    }
    if (vineTrue.getBool('beanstalk') == true) {
      shoppingView.forEach((ShoppingView shoppingview) {
        if (shoppingview.power == 'beanstalk') {
          shoppingview.bought = true;
          beanstalk_bought = true;
          beanstalk = Beanstalk(this, shoppingview.x, shoppingview.y);
        }
      });
      shoppingView.removeWhere((ShoppingView shoppingview) =>
      (shoppingview.bought == true));
    }
  }

  void loadShop() {
    shoppingView.add(ShoppingView(
        this,
        0,
        0.5,
        200,
        1.9,
        3.9,
        '200',
        'beanstalk'));
    shoppingView.add(ShoppingView(
        this,
        2.5,
        0.5,
        200,
        4.4,
        3.9,
        '200',
        'heart'));
    shoppingView.add(ShoppingView(
        this,
        5,
        0.5,
        200,
        6.9,
        3.9,
        '200',
        'rupee'));
    shoppingView.add(ShoppingView(
        this,
        0,
        4,
        200,
        1.9,
        8.34,
        '200',
        'magnet'));
    shoppingView.add(ShoppingView(
        this,
        2.5,
        4,
        200,
        4.4,
        8.34,
        '200',
        'swords'));
    shoppingView.add(ShoppingView(
        this,
        5,
        4,
        200,
        6.9,
        8.34,
        '200',
        'armor'));
    shoppingView.add(ShoppingView(
        this,
        0,
        7.5,
        200,
        1.9,
        12.75,
        '200',
        'eagle'));
    shoppingView.add(ShoppingView(
        this,
        2.5,
        7.5,
        400,
        4.4,
        12.75,
        '400',
        'arrows'));
    shoppingView.add(ShoppingView(
        this,
        5,
        7.5,
        800,
        6.9,
        12.75,
        '800',
        'shield'));
  }

  void spawnCircle(){
    circle.add(Circle(this, 'green', 1));
    circle.add(Circle(this, 'green', 2));
    circle.add(Circle(this, 'green', 3));
    circle.add(Circle(this, 'green', 4));
    circle.add(Circle(this, 'yellow', 1));
    circle.add(Circle(this, 'yellow', 2));
    circle.add(Circle(this, 'yellow', 3));
    circle.add(Circle(this, 'yellow', 4));
    circle.add(Circle(this, 'red', 1));
    circle.add(Circle(this, 'red', 2));
    circle.add(Circle(this, 'red', 3));
    circle.add(Circle(this, 'red', 4));
    circle.add(Circle(this, 'blue', 1));
    circle.add(Circle(this, 'blue', 2));
    circle.add(Circle(this, 'blue', 3));
    circle.add(Circle(this, 'blue', 4));
  }

  void spawnFly() {
    fly = Fly(this, (screenSize.width - tileSize) / 2,
        screenSize.height - (btileSize * 2) - (tileSize / 8));
  }

  void spawnPlayer(){
    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      player_green_1 = Player(
          this,
          0,
          green_home_1.dx,
          green_home_1.dy,
          'green.png',
          'green',
          green_one.dx,
          green_one.dy);
      player_green_2 = Player(
          this,
          0,
          green_home_2.dx,
          green_home_2.dy,
          'green.png',
          'green',
          green_one.dx,
          green_one.dy);
      player_green_3 = Player(
          this,
          0,
          green_home_3.dx,
          green_home_3.dy,
          'green.png',
          'green',
          green_one.dx,
          green_one.dy);
      player_green_4 = Player(
          this,
          0,
          green_home_4.dx,
          green_home_4.dy,
          'green.png',
          'green',
          green_one.dx,
          green_one.dy);
    }
    if (activeMode == Mode.fourPlayer) {
      player_yellow_1 = Player(
          this,
          0,
          yellow_home_1.dx,
          yellow_home_1.dy,
          'yellow.png',
          'yellow',
          yellow_one.dx,
          yellow_one.dy);
      player_yellow_2 = Player(
          this,
          0,
          yellow_home_2.dx,
          yellow_home_2.dy,
          'yellow.png',
          'yellow',
          yellow_one.dx,
          yellow_one.dy);
      player_yellow_3 = Player(
          this,
          0,
          yellow_home_3.dx,
          yellow_home_3.dy,
          'yellow.png',
          'yellow',
          yellow_one.dx,
          yellow_one.dy);
      player_yellow_4 = Player(
          this,
          0,
          yellow_home_4.dx,
          yellow_home_4.dy,
          'yellow.png',
          'yellow',
          yellow_one.dx,
          yellow_one.dy);
    }
    if (activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      player_red_1 = Player(
          this,
          0,
          red_home_1.dx,
          red_home_1.dy,
          'red.png',
          'red',
          red_one.dx,
          red_one.dy);
      player_red_2 = Player(
          this,
          0,
          red_home_2.dx,
          red_home_2.dy,
          'red.png',
          'red',
          red_one.dx,
          red_one.dy);
      player_red_3 = Player(
          this,
          0,
          red_home_3.dx,
          red_home_3.dy,
          'red.png',
          'red',
          red_one.dx,
          red_one.dy);
      player_red_4 = Player(
          this,
          0,
          red_home_4.dx,
          red_home_4.dy,
          'red.png',
          'red',
          red_one.dx,
          red_one.dy);
    }
    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      player_blue_1 = Player(
          this,
          0,
          blue_home_1.dx,
          blue_home_1.dy,
          'blue.png',
          'blue',
          blue_one.dx,
          blue_one.dy);
      player_blue_2 = Player(
          this,
          0,
          blue_home_2.dx,
          blue_home_2.dy,
          'blue.png',
          'blue',
          blue_one.dx,
          blue_one.dy);
      player_blue_3 = Player(
          this,
          0,
          blue_home_3.dx,
          blue_home_3.dy,
          'blue.png',
          'blue',
          blue_one.dx,
          blue_one.dy);
      player_blue_4 = Player(
          this,
          0,
          blue_home_4.dx,
          blue_home_4.dy,
          'blue.png',
          'blue',
          blue_one.dx,
          blue_one.dy);
    }
  }

  void spawnDice(){
    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      dice_green = Dice(this, (screenSize.width - tileSize * 8) / 2,
          (screenSize.height - tileSize * 14), 'green', true);
    }
    if (activeMode == Mode.fourPlayer) {
      dice_yellow = Dice(this, (screenSize.width + tileSize * 6) / 2,
          (screenSize.height - tileSize * 14), 'yellow', false);
    }
    if (activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      dice_red = Dice(this, (screenSize.width - tileSize * 8) / 2,
          (screenSize.height - tileSize * 3.5), 'red', false);
    }
    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      dice_blue = Dice(this, (screenSize.width + tileSize * 6) / 2,
          (screenSize.height - tileSize * 3.5), 'blue', false);
    }
  }

  void spawnRain() {
    notHome = true;
    if (arrowsActive == false) {
      if (activeView == View.playing) if (amountRain > rains.length) {
        rains.add(Rain(this));
        power_up.forEach((Powers power) {
          if (power.active) {
            power.raincount += 1;
          }
        });
      }
    }
    else if (reduceRain == false || noRain == false) {
      if (activeView == View.playing && arrowsActive == false) if (amountRain > rains.length) {
        rains.add(Rain(this));
        power_up.forEach((Powers power) {
          if (power.active) {
            power.raincount += 1;
          }
        });
      }
    }
    if (arrowsActive || reduceRain || noRain) {

      temAmountRain = 5;
      if(noRain){
        temAmountRain = 0;
      }
      else if(reduceRain){
        temAmountRain = 1;
      }
      if (activeView == View.playing) if (temAmountRain < rains.length) {
        rains.removeLast();
      }
      else if (temAmountRain > rains.length) {
        rains.add(Rain(this));
        power_up.forEach((Powers power) {
          if (power.active) {
            power.raincount += 1;
          }
        });
      }
    }
    if (activeView == View.home || activeView == View.lost || activeView == View.credits)
      if (homeamountRain > homerains.length) {
        notHome = false;
        homerains.add(Rain(this));
      }
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(
        0, 0, screenSize.width, screenSize.height); // L and T are coordinates
    Paint bgPaint = Paint();
    bgPaint.color = Color(
        0xff192a56); // Fuel Town from FlatUIColors.com be careful as some color can be harmful
    canvas.drawRect(bgRect, bgPaint); // Canvas needs a size and a color
    Rect lowerRect = Rect.fromLTWH(
        0, screenSize.height - (tileSize * 2.5), screenSize.width,
        tileSize * 2.5);
    Paint lowerPaint = Paint();
    lowerPaint.color = Color(0xff151515);

    if (activeView == View.playing) board.render(canvas);
    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing) dice_green.render(canvas);
    }
    if (activeMode == Mode.fourPlayer) {
      if (activeView == View.playing) dice_yellow.render(canvas);
    }
    if (activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing) dice_red.render(canvas);
    }
    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing) dice_blue.render(canvas);
    }
    if (activeView == View.playing) arrow.render(canvas);
    if (activeView == View.playing) circle.forEach((Circle circle) => circle.render(canvas));
//    if (activeView == View.playing) players.forEach((Player player) => player.render(canvas));
    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing) player_green_1.render(canvas);
      if (activeView == View.playing) player_green_2.render(canvas);
      if (activeView == View.playing) player_green_3.render(canvas);
      if (activeView == View.playing) player_green_4.render(canvas);
    }
    if (activeMode == Mode.fourPlayer) {
      if (activeView == View.playing) player_yellow_1.render(canvas);
      if (activeView == View.playing) player_yellow_2.render(canvas);
      if (activeView == View.playing) player_yellow_3.render(canvas);
      if (activeView == View.playing) player_yellow_4.render(canvas);
    }
    if (activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing) player_red_1.render(canvas);
      if (activeView == View.playing) player_red_2.render(canvas);
      if (activeView == View.playing) player_red_3.render(canvas);
      if (activeView == View.playing) player_red_4.render(canvas);
    }
    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing) player_blue_1.render(canvas);
      if (activeView == View.playing) player_blue_2.render(canvas);
      if (activeView == View.playing) player_blue_3.render(canvas);
      if (activeView == View.playing) player_blue_4.render(canvas);
    }


//    if (activeView == View.playing) canvas.drawRect(lowerRect, lowerPaint);
    spawnRain();
    /**    if (activeView == View.playing) rains.forEach((Rain rain) =>
        rain.render(canvas));
     */    if (activeView == View.home || activeView == View.lost || activeView == View.credits) homerains.forEach((
        Rain rain) => rain.render(canvas));
    /**    if (activeView == View.playing) fly.render(canvas);
        if (activeView == View.playing) scoreDisplay.render(canvas);
     */    if (activeView == View.home) {
      ads.render(canvas);
      homeView.render(canvas);
    }
    if (activeView == View.lost) lostView.render(canvas);
    if (activeView == View.home || activeView == View.shopping) gemsdisplay.render(canvas);
    if (activeView == View.shopping) shoppingView.forEach((
        ShoppingView shoppingview) => shoppingview.render(canvas));
    if (activeView == View.lost) highscoreDisplay.render(canvas);
    if (activeView == View.home || activeView == View.lost) {
      startButton.render(canvas);
    }
    if (activeView == View.lost) {
      homeButton.render(canvas);
    }
    if (activeView == View.home) shop.render(canvas);
    if (activeView == View.home) credits.render(canvas);
    if (activeView == View.home) tuts.render(canvas);
    if (activeView == View.shopping) shopDisplay.render(canvas);
    if (activeView == View.tuts) {
      tutsDisplay.render(canvas);
      gemDisplay.render(canvas);
      whiteDisplay.render(canvas);
      powerDisplay.render(canvas);
      warningDisplay.render(canvas);
      gemGrab.render(canvas);
    }

    if (activeView == View.credits) {
      creditsDisplay.render(canvas);
    }
    /**    if (greentext) getGreen.render(canvas);
        if (greentext) getGreen2.render(canvas);
     */    if (activeView == View.credits) {
      t1.render(canvas);
      t2.render(canvas);
      t3.render(canvas);
      t4.render(canvas);
      t5.render(canvas);
      t6.render(canvas);
      t7.render(canvas);
    }
    if (activeView == View.shopping && magnet_bought == true) magnet.render(canvas);
    if (activeView == View.shopping && shield_bought == true) shield.render(canvas);
    if (activeView == View.shopping && heart_bought == true) heart.render(canvas);
    if (activeView == View.shopping && swords_bought == true) swords.render(canvas);
    if (activeView == View.shopping && rupee_bought == true) rupee.render(canvas);
    if (activeView == View.shopping && arrows_bought == true) arrows.render(canvas);
    if (activeView == View.shopping && armor_bought == true) armor.render(canvas);
    if (activeView == View.shopping && eagle_bought == true) eagle.render(canvas);
    if (activeView == View.shopping && beanstalk_bought == true) beanstalk.render(canvas);
    if (activeView == View.shopping || activeView == View.tuts || activeView == View.credits) back.render(canvas);
//    if (activeView == View.playing) power_up.forEach((Powers powers) => powers.render(canvas));

  }

  void update(double t) {
//    if (greentext) getGreen.update(text, 1.9, 9);
//    if (activeView == View.playing) fly.update(t);
    /**    if (activeView == View.playing) {
        rains.forEach((Rain rain) => rain.update(t));
        rains.removeWhere((Rain rain) => (rain.onScreen == false));
        }
     *///    if (activeView == View.playing && tut == false)circle.removeWhere((Circle circle) => (tapRDone && tapLDone));
    if (activeView == View.home || activeView == View.lost || activeView == View.credits) {
      homerains.forEach((Rain rain) => rain.update(t));
      homerains.removeWhere((Rain rain) => (rain.onScreen == false));
    }
    /**    if (activeView == View.playing) rains.forEach((Rain rain) {
        if (magnetActive) {
        if (rain.rainColor == rain.colorGreen &&
        rain.y > fly.y - (tileSize) - raintileSize &&
        fly.x + (tileSize * 2) > rain.x &&
        fly.x - (tileSize * 2) < rain.x + raintileSize) {
        rain.onScreen = false;
        amountRain += 1;
        score += 1;
        if (score > (storage.getInt('highscore') ?? 0)) {
        storage.setInt('highscore', score);
        highscoreDisplay.updateHighscore();
        }
        counter = (gemsstorage.getInt('gems') ?? 0) + increasegems;
        gemsstorage.setInt('gems', counter);
        gemsdisplay.updateGems();
        }
        }
        if (rain.rainColor == rain.colorWhite && rain.y > fly.y + tileSize - raintileSize && rain.x + raintileSize > fly.x && fly.width + fly.x > rain.x) {
        rain.onScreen = false;
        if(tut == false && whiteObtained == false){
        whiteObtained = true;
        powerx = 2.5;
        power_up.add(Powers(this, powerx, 10, 'chest-armor.png', 1));
        firstFree = false;
        }
        else if (firstFree) {
        powerx = 0;
        power = randomChoice(powers);
        power_up.add(Powers(this, powerx, 10, power, 1));
        firstFree = false;
        } else if (secondFree) {
        powerx = 2.5;
        power = randomChoice(powers);
        power_up.add(Powers(this, powerx, 10, power, 2));
        secondFree = false;
        } else if (thirdFree) {
        powerx = 5;
        power = randomChoice(powers);
        power_up.add(Powers(this, powerx, 10, power, 3));
        thirdFree = false;
        }
        }
        if (rain.rainColor == rain.colorGreen &&
        rain.y > fly.y + tileSize - raintileSize &&
        rain.x + raintileSize > fly.x && fly.width + fly.x > rain.x) {
        rain.onScreen = false;
        amountRain += 1;
        score += 1;
        if (score > (storage.getInt('highscore') ?? 0)) {
        storage.setInt('highscore', score);
        highscoreDisplay.updateHighscore();
        }
        counter = (gemsstorage.getInt('gems') ?? 0) + increasegems;
        gemsstorage.setInt('gems', counter);
        gemsdisplay.updateGems();
        }
        if (rain.rainColor == rain.colorRed || rain.rainColor == rain.colorBlue ||
        rain.rainColor == rain.colorYellow) {
        if (rain.y > fly.y + tileSize - raintileSize &&
        rain.x + raintileSize > fly.x && fly.width + fly.x > rain.x) {
        rain.onScreen = false;
        fly.isUp = true;
        }
        }
        });
     *///    if (activeView == View.playing) scoreDisplay.update(t);

    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing && player_green_1.dicerolled == true ||
          player_green_1.counter != player_green_1.rolled) {
        player_green_1.update(t);
        if (player_green_1.counter == player_green_1.rolled) {
          player_green_1.total_moved += player_green_1.rolled;
          player_green_1.counter = 0;
          player_green_1.rolled = 0;
          player_green_1.dicerolled = false;
        }
      }

      if (activeView == View.playing && player_green_2.dicerolled == true ||
          player_green_2.counter != player_green_2.rolled) {
        player_green_2.update(t);
        if (player_green_2.counter == player_green_2.rolled) {
          player_green_2.total_moved += player_green_2.rolled;
          player_green_2.counter = 0;
          player_green_2.rolled = 0;
          player_green_2.dicerolled = false;
        }
      }

      if (activeView == View.playing && player_green_3.dicerolled == true ||
          player_green_3.counter != player_green_3.rolled) {
        player_green_3.update(t);
        if (player_green_3.counter == player_green_3.rolled) {
          player_green_3.total_moved += player_green_3.rolled;
          player_green_3.counter = 0;
          player_green_3.rolled = 0;
          player_green_3.dicerolled = false;
        }
      }

      if (activeView == View.playing && player_green_4.dicerolled == true ||
          player_green_4.counter != player_green_4.rolled) {
        player_green_4.update(t);
        if (player_green_4.counter == player_green_4.rolled) {
          player_green_4.total_moved += player_green_4.rolled;
          player_green_4.counter = 0;
          player_green_4.rolled = 0;
          player_green_4.dicerolled = false;
        }
      }
    }

    if (activeMode == Mode.fourPlayer) {
      if (activeView == View.playing && player_yellow_1.dicerolled == true ||
          player_yellow_1.counter != player_yellow_1.rolled) {
        player_yellow_1.update(t);
        if (player_yellow_1.counter == player_yellow_1.rolled) {
          player_yellow_1.total_moved += player_yellow_1.rolled;
          player_yellow_1.counter = 0;
          player_yellow_1.rolled = 0;
          player_yellow_1.dicerolled = false;
        }
      }
      if (activeView == View.playing && player_yellow_2.dicerolled == true ||
          player_yellow_2.counter != player_yellow_2.rolled) {
        player_yellow_2.update(t);
        if (player_yellow_2.counter == player_yellow_2.rolled) {
          player_yellow_2.total_moved += player_yellow_2.rolled;
          player_yellow_2.counter = 0;
          player_yellow_2.rolled = 0;
          player_yellow_2.dicerolled = false;
        }
      }
      if (activeView == View.playing && player_yellow_3.dicerolled == true ||
          player_yellow_3.counter != player_yellow_3.rolled) {
        player_yellow_3.update(t);
        if (player_yellow_3.counter == player_yellow_3.rolled) {
          player_yellow_3.total_moved += player_yellow_3.rolled;
          player_yellow_3.counter = 0;
          player_yellow_3.rolled = 0;
          player_yellow_3.dicerolled = false;
        }
      }
      if (activeView == View.playing && player_yellow_4.dicerolled == true ||
          player_yellow_4.counter != player_yellow_4.rolled) {
        player_yellow_4.update(t);
        if (player_yellow_4.counter == player_yellow_4.rolled) {
          player_yellow_4.total_moved += player_yellow_4.rolled;
          player_yellow_4.counter = 0;
          player_yellow_4.rolled = 0;
          player_yellow_4.dicerolled = false;
        }
      }
    }

    if (activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing && player_red_1.dicerolled == true ||
          player_red_1.counter != player_red_1.rolled) {
        player_red_1.update(t);
        if (player_red_1.counter == player_red_1.rolled) {
          player_red_1.total_moved += player_red_1.rolled;
          player_red_1.counter = 0;
          player_red_1.rolled = 0;
          player_red_1.dicerolled = false;
        }
      }

      if (activeView == View.playing && player_red_2.dicerolled == true ||
          player_red_2.counter != player_red_2.rolled) {
        player_red_2.update(t);
        if (player_red_2.counter == player_red_2.rolled) {
          player_red_2.total_moved += player_red_2.rolled;
          player_red_2.counter = 0;
          player_red_2.rolled = 0;
          player_red_2.dicerolled = false;
        }
      }

      if (activeView == View.playing && player_red_3.dicerolled == true ||
          player_red_3.counter != player_red_3.rolled) {
        player_red_3.update(t);
        if (player_red_3.counter == player_red_3.rolled) {
          player_red_3.total_moved += player_red_3.rolled;
          player_red_3.counter = 0;
          player_red_3.rolled = 0;
          player_red_3.dicerolled = false;
        }
      }

      if (activeView == View.playing && player_red_4.dicerolled == true ||
          player_red_4.counter != player_red_4.rolled) {
        player_red_4.update(t);
        if (player_red_4.counter == player_red_4.rolled) {
          player_red_4.total_moved += player_red_4.rolled;
          player_red_4.counter = 0;
          player_red_4.rolled = 0;
          player_red_4.dicerolled = false;
        }
      }
    }

    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing && player_blue_1.dicerolled == true ||
          player_blue_1.counter != player_blue_1.rolled) {
        player_blue_1.update(t);
        if (player_blue_1.counter == player_blue_1.rolled) {
          player_blue_1.total_moved += player_blue_1.rolled;
          player_blue_1.counter = 0;
          player_blue_1.rolled = 0;
          player_blue_1.dicerolled = false;
        }
      }
      if (activeView == View.playing && player_blue_2.dicerolled == true ||
          player_blue_2.counter != player_blue_2.rolled) {
        player_blue_2.update(t);
        if (player_blue_2.counter == player_blue_2.rolled) {
          player_blue_2.total_moved += player_blue_2.rolled;
          player_blue_2.counter = 0;
          player_blue_2.rolled = 0;
          player_blue_2.dicerolled = false;
        }
      }
      if (activeView == View.playing && player_blue_3.dicerolled == true ||
          player_blue_3.counter != player_blue_3.rolled) {
        player_blue_3.update(t);
        if (player_blue_3.counter == player_blue_3.rolled) {
          player_blue_3.total_moved += player_blue_3.rolled;
          player_blue_3.counter = 0;
          player_blue_3.rolled = 0;
          player_blue_3.dicerolled = false;
        }
      }
      if (activeView == View.playing && player_blue_4.dicerolled == true ||
          player_blue_4.counter != player_blue_4.rolled) {
        player_blue_4.update(t);
        if (player_blue_4.counter == player_blue_4.rolled) {
          player_blue_4.total_moved += player_blue_4.rolled;
          player_blue_4.counter = 0;
          player_blue_4.rolled = 0;
          player_blue_4.dicerolled = false;
        }
      }
    }

    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing && dice_green.choosePlayer == true &&
          (player_green_1.total_moved + dice_green.rolled > 57 || (player_green_1.position == 0 && dice_green.rolled != 6) || ((blocked.contains(player_green_1.location + dice_green.rolled) && player_green_1.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_1.location + dice_green.rolled - 52) && player_green_1.location + dice_green.rolled >= 53))) || (player_green_1.position == 0 && blocked.contains(1))) &&
          (player_green_2.total_moved + dice_green.rolled > 57 || (player_green_2.position == 0 && dice_green.rolled != 6) || ((blocked.contains(player_green_2.location + dice_green.rolled) && player_green_2.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_2.location + dice_green.rolled - 52) && player_green_2.location + dice_green.rolled >= 53))) || (player_green_2.position == 0 && blocked.contains(1))) &&
          (player_green_3.total_moved + dice_green.rolled > 57 || (player_green_3.position == 0 && dice_green.rolled != 6) || ((blocked.contains(player_green_3.location + dice_green.rolled) && player_green_3.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_3.location + dice_green.rolled - 52) && player_green_3.location + dice_green.rolled >= 53))) || (player_green_3.position == 0 && blocked.contains(1))) &&
          (player_green_4.total_moved + dice_green.rolled > 57 || (player_green_4.position == 0 && dice_green.rolled != 6) || ((blocked.contains(player_green_4.location + dice_green.rolled) && player_green_4.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_4.location + dice_green.rolled - 52) && player_green_4.location + dice_green.rolled >= 53))) || (player_green_4.position == 0 && blocked.contains(1)))) {
        player_green_1.dicerolled = false;
        player_green_2.dicerolled = false;
        player_green_3.dicerolled = false;
        player_green_4.dicerolled = false;
        dice_green.choosePlayer = false;
        if(activeMode == Mode.twoPlayer) {
          if (dice_green.rolled == 6 && green_six_counter <= 1) {
            dice_green.isTurn = true;
            dice_yellow.isTurn = false;
            dice_red.isTurn = false;
            dice_blue.isTurn = false;
            green_six_counter += 1;
          } else {
            dice_green.isTurn = false;
            dice_blue.isTurn = true;
            green_six_counter = 0;
          }
        }
        else if(activeMode == Mode.threePlayer) {
          if (dice_green.rolled == 6 && green_six_counter <= 1) {
            dice_green.isTurn = true;
            dice_yellow.isTurn = false;
            dice_red.isTurn = false;
            dice_blue.isTurn = false;
            green_six_counter += 1;
          } else {
            dice_green.isTurn = false;
            dice_red.isTurn = false;
            dice_blue.isTurn = true;
            green_six_counter = 0;
          }
        }
        else if(activeMode == Mode.fourPlayer) {
          if (dice_green.rolled == 6 && green_six_counter <= 1) {
            dice_green.isTurn = true;
            dice_yellow.isTurn = false;
            dice_red.isTurn = false;
            dice_blue.isTurn = false;
            green_six_counter += 1;
          } else {
            dice_green.isTurn = false;
            dice_red.isTurn = false;
            dice_blue.isTurn = false;
            dice_yellow.isTurn = true;
            green_six_counter = 0;
          }
        }
      }
    }

    if (activeMode == Mode.fourPlayer) {
      if (activeView == View.playing && dice_yellow.choosePlayer == true &&
          (player_yellow_1.total_moved + dice_yellow.rolled > 57 || (player_yellow_1.position == 0 && dice_yellow.rolled != 6) || ((blocked.contains(player_yellow_1.location + dice_yellow.rolled) && player_yellow_1.location + dice_yellow.rolled <= 52) || ((blocked.contains(player_yellow_1.location + dice_yellow.rolled - 52) && player_yellow_1.location + dice_yellow.rolled >= 53))) || (player_yellow_1.position == 0 && blocked.contains(14))) &&
          (player_yellow_2.total_moved + dice_yellow.rolled > 57 || (player_yellow_2.position == 0 && dice_yellow.rolled != 6) || ((blocked.contains(player_yellow_2.location + dice_yellow.rolled) && player_yellow_2.location + dice_yellow.rolled <= 52) || ((blocked.contains(player_yellow_2.location + dice_yellow.rolled - 52) && player_yellow_2.location + dice_yellow.rolled >= 53))) || (player_yellow_2.position == 0 && blocked.contains(14))) &&
          (player_yellow_3.total_moved + dice_yellow.rolled > 57 || (player_yellow_3.position == 0 && dice_yellow.rolled != 6) || ((blocked.contains(player_yellow_3.location + dice_yellow.rolled) && player_yellow_3.location + dice_yellow.rolled <= 52) || ((blocked.contains(player_yellow_3.location + dice_yellow.rolled - 52) && player_yellow_3.location + dice_yellow.rolled >= 53))) || (player_yellow_3.position == 0 && blocked.contains(14))) &&
          (player_yellow_4.total_moved + dice_yellow.rolled > 57 || (player_yellow_4.position == 0 && dice_yellow.rolled != 6) || ((blocked.contains(player_yellow_4.location + dice_yellow.rolled) && player_yellow_4.location + dice_yellow.rolled <= 52) || ((blocked.contains(player_yellow_4.location + dice_yellow.rolled - 52) && player_yellow_4.location + dice_yellow.rolled >= 53))) || (player_yellow_4.position == 0 && blocked.contains(14)))) {
        player_yellow_1.dicerolled = false;
        player_yellow_2.dicerolled = false;
        player_yellow_3.dicerolled = false;
        player_yellow_4.dicerolled = false;
        dice_yellow.choosePlayer = false;
        if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
          dice_green.isTurn = false;
          dice_yellow.isTurn = true;
          dice_red.isTurn = false;
          dice_blue.isTurn = false;
          yellow_six_counter += 1;
        } else {
          dice_green.isTurn = false;
          dice_yellow.isTurn = false;
          dice_red.isTurn = false;
          dice_blue.isTurn = true;
          yellow_six_counter = 0;
        }
      }
    }

    if (activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing && dice_red.choosePlayer == true &&
          (player_red_1.total_moved + dice_red.rolled > 57 || (player_red_1.position == 0 && dice_red.rolled != 6) || ((blocked.contains(player_red_1.location + dice_red.rolled) && player_red_1.location + dice_red.rolled <= 52) || ((blocked.contains(player_red_1.location + dice_red.rolled - 52) && player_red_1.location + dice_red.rolled >= 53))) || (player_red_1.position == 0 && blocked.contains(40))) &&
          (player_red_2.total_moved + dice_red.rolled > 57 || (player_red_2.position == 0 && dice_red.rolled != 6) || ((blocked.contains(player_red_2.location + dice_red.rolled) && player_red_2.location + dice_red.rolled <= 52) || ((blocked.contains(player_red_2.location + dice_red.rolled - 52) && player_red_2.location + dice_red.rolled >= 53))) || (player_red_2.position == 0 && blocked.contains(40))) &&
          (player_red_3.total_moved + dice_red.rolled > 57 || (player_red_3.position == 0 && dice_red.rolled != 6) || ((blocked.contains(player_red_3.location + dice_red.rolled) && player_red_3.location + dice_red.rolled <= 52) || ((blocked.contains(player_red_3.location + dice_red.rolled - 52) && player_red_3.location + dice_red.rolled >= 53))) || (player_red_3.position == 0 && blocked.contains(40))) &&
          (player_red_4.total_moved + dice_red.rolled > 57 || (player_red_4.position == 0 && dice_red.rolled != 6) || ((blocked.contains(player_red_4.location + dice_red.rolled) && player_red_4.location + dice_red.rolled <= 52) || ((blocked.contains(player_red_4.location + dice_red.rolled - 52) && player_red_4.location + dice_red.rolled >= 53))) || (player_red_4.position == 0 && blocked.contains(40)))) {
        player_red_1.dicerolled = false;
        player_red_2.dicerolled = false;
        player_red_3.dicerolled = false;
        player_red_4.dicerolled = false;
        dice_red.choosePlayer = false;
        if(activeMode == Mode.threePlayer) {
          if (dice_red.rolled == 6 && red_six_counter <= 1) {
            dice_green.isTurn = false;
            dice_yellow.isTurn = false;
            dice_red.isTurn = true;
            dice_blue.isTurn = false;
            red_six_counter += 1;
          } else {
            dice_green.isTurn = true;
            dice_red.isTurn = false;
            dice_blue.isTurn = false;
            dice_yellow.isTurn = false;
            red_six_counter = 0;
          }
        }
        else if(activeMode == Mode.fourPlayer) {
          if (dice_red.rolled == 6 && red_six_counter <= 1) {
            dice_green.isTurn = false;
            dice_yellow.isTurn = false;
            dice_red.isTurn = true;
            dice_blue.isTurn = false;
            red_six_counter += 1;
          } else {
            dice_green.isTurn = true;
            dice_red.isTurn = false;
            dice_blue.isTurn = false;
            dice_yellow.isTurn = false;
            red_six_counter = 0;
          }
        }
      }
    }

    if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
      if (activeView == View.playing && dice_blue.choosePlayer == true &&
          (player_blue_1.total_moved + dice_blue.rolled > 57 || (player_blue_1.position == 0 && dice_blue.rolled != 6) || ((blocked.contains(player_green_1.location + dice_green.rolled) && player_green_1.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_1.location + dice_green.rolled - 52) && player_green_1.location + dice_green.rolled >= 53))) || (player_blue_1.position == 0 && blocked.contains(27))) &&
          (player_blue_2.total_moved + dice_blue.rolled > 57 || (player_blue_2.position == 0 && dice_blue.rolled != 6) || ((blocked.contains(player_green_2.location + dice_green.rolled) && player_green_2.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_2.location + dice_green.rolled - 52) && player_green_2.location + dice_green.rolled >= 53))) || (player_blue_2.position == 0 && blocked.contains(27))) &&
          (player_blue_3.total_moved + dice_blue.rolled > 57 || (player_blue_3.position == 0 && dice_blue.rolled != 6) || ((blocked.contains(player_green_3.location + dice_green.rolled) && player_green_3.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_3.location + dice_green.rolled - 52) && player_green_3.location + dice_green.rolled >= 53))) || (player_blue_3.position == 0 && blocked.contains(27))) &&
          (player_blue_4.total_moved + dice_blue.rolled > 57 || (player_blue_4.position == 0 && dice_blue.rolled != 6) || ((blocked.contains(player_green_4.location + dice_green.rolled) && player_green_4.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_4.location + dice_green.rolled - 52) && player_green_4.location + dice_green.rolled >= 53))) || (player_blue_4.position == 0 && blocked.contains(27)))) {
        player_blue_1.dicerolled = false;
        player_blue_2.dicerolled = false;
        player_blue_3.dicerolled = false;
        player_blue_4.dicerolled = false;
        dice_blue.choosePlayer = false;
        if(activeMode == Mode.twoPlayer) {
          if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
            dice_green.isTurn = false;
            dice_yellow.isTurn = false;
            dice_red.isTurn = false;
            dice_blue.isTurn = true;
            blue_six_counter += 1;
          } else {
            dice_green.isTurn = true;
            dice_red.isTurn = false;
            dice_blue.isTurn = false;
            dice_yellow.isTurn = false;
            blue_six_counter = 0;
          }
        }
        else if(activeMode == Mode.threePlayer) {
          if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
            dice_green.isTurn = false;
            dice_yellow.isTurn = false;
            dice_red.isTurn = false;
            dice_blue.isTurn = true;
            blue_six_counter += 1;
          } else {
            dice_green.isTurn = false;
            dice_red.isTurn = true;
            dice_blue.isTurn = false;
            dice_yellow.isTurn = false;
            blue_six_counter = 0;
          }
        }
        else if(activeMode == Mode.fourPlayer) {
          if (dice_blue.rolled == 6 && red_six_counter <= 1) {
            dice_green.isTurn = false;
            dice_yellow.isTurn = false;
            dice_red.isTurn = false;
            dice_blue.isTurn = true;
            red_six_counter += 1;
          } else {
            dice_green.isTurn = false;
            dice_red.isTurn = true;
            dice_blue.isTurn = false;
            dice_yellow.isTurn = false;
            red_six_counter = 0;
          }
        }
      }
    }

    if(activeMode == Mode.twoPlayer) {
      if (player_green_1.total_moved == 57 && player_green_2.total_moved == 57 && player_green_3.total_moved == 57 && player_green_4.total_moved == 57){
        activeView = View.lost;
        player_green_1.position = 0;
        player_green_2.position = 0;
        player_green_3.position = 0;
        player_green_4.position = 0;
        player_green_1.x = playertileSize * 2 + centerplayer * 3.5;
        player_green_2.x = playertileSize * 3.4 + centerplayer * 3;
        player_green_3.x = playertileSize * 3.4 + centerplayer * 3;
        player_green_4.x = playertileSize * 2 + centerplayer * 3.5;
        player_green_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer;
        player_green_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer;
        player_green_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer;
        player_green_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer;
      }
      else if (player_blue_1.total_moved == 57 && player_blue_2.total_moved == 57 && player_blue_3.total_moved == 57 && player_blue_4.total_moved == 57){
        activeView = View.lost;
        player_blue_1.position = 0;
        player_blue_2.position = 0;
        player_blue_3.position = 0;
        player_blue_4.position = 0;
        player_blue_1.x = playertileSize * 10.2 + centerplayer * 3.5;
        player_blue_2.x = playertileSize * 11.55 + centerplayer * 3.25;
        player_blue_3.x = playertileSize * 10.2 + centerplayer * 3.5;
        player_blue_4.x = playertileSize * 11.55 + centerplayer * 3.25;
        player_blue_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
        player_blue_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
        player_blue_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
        player_blue_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
      }
    }

    else if(activeMode == Mode.fourPlayer) {
      if (player_green_1.total_moved == 57 && player_green_2.total_moved == 57 && player_green_3.total_moved == 57 && player_green_4.total_moved == 57){
        activeView = View.lost;
        player_green_1.position = 0;
        player_green_2.position = 0;
        player_green_3.position = 0;
        player_green_4.position = 0;
        player_green_1.x = playertileSize * 2 + centerplayer * 3.5;
        player_green_2.x = playertileSize * 3.4 + centerplayer * 3;
        player_green_3.x = playertileSize * 3.4 + centerplayer * 3;
        player_green_4.x = playertileSize * 2 + centerplayer * 3.5;
        player_green_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer;
        player_green_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer;
        player_green_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer;
        player_green_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer;
      }
      else if (player_blue_1.total_moved == 57 && player_blue_2.total_moved == 57 && player_blue_3.total_moved == 57 && player_blue_4.total_moved == 57){
        activeView = View.lost;
        player_blue_1.position = 0;
        player_blue_2.position = 0;
        player_blue_3.position = 0;
        player_blue_4.position = 0;
        player_blue_1.x = playertileSize * 10.2 + centerplayer * 3.5;
        player_blue_2.x = playertileSize * 11.55 + centerplayer * 3.25;
        player_blue_3.x = playertileSize * 10.2 + centerplayer * 3.5;
        player_blue_4.x = playertileSize * 11.55 + centerplayer * 3.25;
        player_blue_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
        player_blue_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
        player_blue_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
        player_blue_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
      }
      else if (player_yellow_1.total_moved == 57 && player_yellow_2.total_moved == 57 && player_yellow_3.total_moved == 57 && player_yellow_4.total_moved == 57){
        activeView = View.lost;
        player_yellow_1.position = 0;
        player_yellow_2.position = 0;
        player_yellow_3.position = 0;
        player_yellow_4.position = 0;
        player_yellow_1.x = playertileSize * 10.2 + centerplayer * 3.5;
        player_yellow_2.x = playertileSize * 11.55 + centerplayer * 3.25;
        player_yellow_3.x = playertileSize * 10.2 + centerplayer * 3.5;
        player_yellow_4.x = playertileSize * 11.55 + centerplayer * 3.25;
        player_yellow_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer;
        player_yellow_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer;
        player_yellow_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer;
        player_yellow_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer;
      }
      else if (player_red_1.total_moved == 57 && player_red_2.total_moved == 57 && player_red_3.total_moved == 57 && player_red_4.total_moved == 57){
        activeView = View.lost;
        player_red_1.position = 0;
        player_red_2.position = 0;
        player_red_3.position = 0;
        player_red_4.position = 0;
        player_red_1.x = playertileSize * 2 + centerplayer * 3.5;
        player_red_2.x = playertileSize * 3.4 + centerplayer * 3;
        player_red_3.x = playertileSize * 2 + centerplayer * 3.5;
        player_red_4.x = playertileSize * 3.4 + centerplayer * 3;
        player_red_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
        player_red_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
        player_red_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
        player_red_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
      }
    }

    else if(activeMode == Mode.threePlayer) {
      if (player_green_1.total_moved == 57 && player_green_2.total_moved == 57 && player_green_3.total_moved == 57 && player_green_4.total_moved == 57){
        activeView = View.lost;
        player_green_1.position = 0;
        player_green_2.position = 0;
        player_green_3.position = 0;
        player_green_4.position = 0;
        player_green_1.x = playertileSize * 2 + centerplayer * 3.5;
        player_green_2.x = playertileSize * 3.4 + centerplayer * 3;
        player_green_3.x = playertileSize * 3.4 + centerplayer * 3;
        player_green_4.x = playertileSize * 2 + centerplayer * 3.5;
        player_green_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer;
        player_green_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 3.75) + centerplayer;
        player_green_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer;
        player_green_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 2.4) + centerplayer;
      }
      else if (player_blue_1.total_moved == 57 && player_blue_2.total_moved == 57 && player_blue_3.total_moved == 57 && player_blue_4.total_moved == 57){
        activeView = View.lost;
        player_blue_1.position = 0;
        player_blue_2.position = 0;
        player_blue_3.position = 0;
        player_blue_4.position = 0;
        player_blue_1.x = playertileSize * 10.2 + centerplayer * 3.5;
        player_blue_2.x = playertileSize * 11.55 + centerplayer * 3.25;
        player_blue_3.x = playertileSize * 10.2 + centerplayer * 3.5;
        player_blue_4.x = playertileSize * 11.55 + centerplayer * 3.25;
        player_blue_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
        player_blue_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
        player_blue_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
        player_blue_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
      }
      else if (player_red_1.total_moved == 57 && player_red_2.total_moved == 57 && player_red_3.total_moved == 57 && player_red_4.total_moved == 57){
        activeView = View.lost;
        player_red_1.position = 0;
        player_red_2.position = 0;
        player_red_3.position = 0;
        player_red_4.position = 0;
        player_red_1.x = playertileSize * 2 + centerplayer * 3.5;
        player_red_2.x = playertileSize * 3.4 + centerplayer * 3;
        player_red_3.x = playertileSize * 2 + centerplayer * 3.5;
        player_red_4.x = playertileSize * 3.4 + centerplayer * 3;
        player_red_1.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
        player_red_2.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 10.4) + centerplayer;
        player_red_3.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
        player_red_4.y = ((screenSize.height - tileSize * 9) / 2) + (playertileSize * 11.75) + centerplayer;
      }
    }

    if (activeView == View.home) homeView.update(t);
    if (activeView == View.lost) lostView.update(t);
    if (activeView == View.shopping) shopDisplay.update('SHOP', 2, 0.25);
    if (activeView == View.tuts) {
      tutsDisplay.update('HOW TO PLAY', 1.7, 0.25);
      gemDisplay.update('Green increases gems and score', 1, 1.5);
      whiteDisplay.update('Obtain powers with white', 1.85, 2.5);
      powerDisplay.update('Unlock power at the store', 1.8, 3.5);
      warningDisplay.update('Avoid all other colors', 1.7, 4.5);
    }
    if (activeView == View.credits) creditsDisplay.update('CREDITS', 1.9, 0.25);
    if (activeView == View.shopping) shoppingView.forEach((
        ShoppingView shoppingview) => shoppingview.update());
    /**    if (activeView == View.playing) power_up.forEach((Powers power) =>
        power.eliminate());
        if (activeView == View.playing) power_up.removeWhere((
        Powers power) => (power.remove == true));

     *///    if (greentext) getGreen2.update(subtext, 1.9, 9.5);
    if (activeView == View.playing) arrow.update(t);
    if (activeView == View.playing) circle.forEach((Circle circle) => circle.update(t));
    if (activeView == View.credits) {
      t1.update('Game Engineer', 1.9, 2);
      t2.update('Mark (voltek.ml)', 1.9, 3);
      t3.update('Art & Design', 1.9, 4.5);
      t4.update('Lorc (game-icons.net)', 1.9, 5.5);
      t5.update('Delapouite (game-icons.net)', 1.9, 6.5);
      t6.update('Skoll (game-icons.net)', 1.9, 7.5);
      t7.update('AhNinniah (ahninniah.carbonmade.com)', 1.9, 8.5);
    }
  }

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
    btileSize = screenSize.width / 5;
    raintileSize = (tileSize * 9) / 18;
    playertileSize = (tileSize * 9) / 15;
    centerplayer = (((tileSize * 9) / 15) - ((tileSize * 9) / 18)) / 2;
  }

  void onTapDown(TapDownDetails d) {
    buy = true;
    goOn = true;

    if (activeView == View.home) {
      if (tuts.rect.contains(d.globalPosition)) {
        if (goOn) {
//          tuts.onTapDown();
          tapRDone = false;
          tapLDone = false;
          whiteObtained = false;
          poweractive = false;
          tut = false;
          homeView.onTapDown();
          spawnCircle();
        }
      }
      if (shop.rect.contains(d.globalPosition)) {
        if (goOn) {
          shop.onTapDown();
          buy = false;
        }
      }
      if (credits.rect.contains(d.globalPosition)) {
        if (goOn) {
          credits.onTapDown();
        }
      }
    }

    if (activeView == View.shopping) {
      if (back.rect.contains(d.globalPosition)) {
        back.onTapDown();
      }
    }

    if (activeView == View.tuts) {
      if (back.rect.contains(d.globalPosition)) {
        back.onTapDown();
      }
    }

    if (activeView == View.credits) {
      if (back.rect.contains(d.globalPosition)) {
        back.onTapDown();
      }
    }

    /**    if (activeView == View.playing) {
        Offset pos = d.globalPosition;
        double pos_x = pos.dx;
        double pos_y = pos.dy;
        if (fly.x < pos_x && pos_y < screenSize.height - (tileSize * 2.5)) {
        fly.isLeft = false;
        fly.isRight = true;
        };
        if (fly.x > pos_x && pos_y < screenSize.height - (tileSize * 2.5)) {
        fly.isLeft = true;
        fly.isRight = false;
        };
        }
     */  }

  void onTapUp(TapUpDetails d) {
    print(dice_yellow.isTurn);
    if(activeView == View.playing) {
      if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer ||
          activeMode == Mode.fourPlayer) {
        if (dice_green.rect.contains(d.globalPosition) &&
            dice_green.choosePlayer == false && dice_green.isTurn == true) {
          dice_green.isRolled = true;
        }
      }
      if (activeMode == Mode.fourPlayer) {
        if (dice_yellow.rect.contains(d.globalPosition) &&
            dice_yellow.choosePlayer == false && dice_yellow.isTurn == true) {
          dice_yellow.isRolled = true;
        }
      }
      if (activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
        if (dice_red.rect.contains(d.globalPosition) &&
            dice_red.choosePlayer == false && dice_red.isTurn == true) {
          dice_red.isRolled = true;
        }
      }
      if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer ||
          activeMode == Mode.fourPlayer) {
        if (dice_blue.rect.contains(d.globalPosition) &&
            dice_blue.choosePlayer == false && dice_blue.isTurn == true) {
          dice_blue.isRolled = true;
        }
      }
      if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer ||
          activeMode == Mode.fourPlayer) {
        if (dice_green.choosePlayer == true &&
            player_green_1.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_green_1.position != 0 || dice_green.rolled == 6) {
            if (player_green_1.total_moved + dice_green.rolled <= 57 &&
                ((blocked.contains(player_green_1.location + dice_green.rolled) ==
                    false && player_green_1.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_1.location + dice_green.rolled - 52) == false && player_green_1.location + dice_green.rolled >= 53))) && (player_green_1.position != 0 || blocked.contains(1) == false)) {
              if (blocked.contains(player_green_1.location)) {
                blocked.remove(player_green_1.location);
                player_green_1.blocked.remove(player_green_1.location);
              }
              player_green_1.roll(dice_green.rolled);
              dice_green.choosePlayer = false;

              if (player_green_1.location == player_green_2.location && player_green_2.isOut == true) {
                print("Save");
                blocked.add(player_green_1.location);
                player_green_1.blocked.add(player_green_1.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              else if (player_green_1.location == player_green_3.location && player_green_3.isOut == true) {
                print("Save");
                blocked.add(player_green_1.location);
                player_green_1.blocked.add(player_green_1.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              else if (player_green_1.location == player_green_4.location && player_green_4.isOut == true) {
                print("Save");
                blocked.add(player_green_1.location);
                player_green_1.blocked.add(player_green_1.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.twoPlayer) {
                if (player_green_1.location == player_blue_1.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_2.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_3.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_4.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_blue.isTurn = true;
                  green_six_counter = 0;
                }
              }
              else if (activeMode == Mode.threePlayer) {
                if (player_green_1.location == player_blue_1.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_2.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_3.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_4.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_red_1.location &&
                    player_green_1.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_red_2.location &&
                    player_green_1.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_red_3.location &&
                    player_green_1.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_red_4.location &&
                    player_green_1.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_red.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  green_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_green_1.location == player_blue_1.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_2.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);

                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_3.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_blue_4.location &&
                    player_green_1.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_yellow_1.location &&
                    player_green_1.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(
                        player_yellow_1.x, player_yellow_1.y, raintileSize,
                        raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_yellow_2.location &&
                    player_green_1.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_2.dx;
                    player_yellow_2.y = yellow_home_2.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(
                        player_yellow_2.x, player_yellow_2.y, raintileSize,
                        raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_yellow_3.location &&
                    player_green_1.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(
                        player_yellow_3.x, player_yellow_3.y, raintileSize,
                        raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_yellow_4.location &&
                    player_green_1.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(
                        player_yellow_4.x, player_yellow_4.y, raintileSize,
                        raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_red_1.location &&
                    player_green_1.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_red_2.location &&
                    player_green_1.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_red_3.location &&
                    player_green_1.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_1.location == player_red_4.location &&
                    player_green_1.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_green_1.save.contains(player_green_1.location)) {
                    print("Save");
                    blocked.add(player_green_1.location);
                    player_green_1.blocked.add(player_green_1.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter = 0;
                }
              }
            }
          }
        }


        if (dice_green.choosePlayer == true &&
            player_green_2.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_green_2.position != 0 || dice_green.rolled == 6) {
            if (player_green_2.total_moved + dice_green.rolled <= 57 &&
                ((blocked.contains(player_green_2.location + dice_green.rolled) ==
                    false && player_green_2.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_2.location + dice_green.rolled - 52) == false && player_green_2.location + dice_green.rolled >= 53))) && (player_green_2.position != 0 || blocked.contains(1) == false)) {
              if (blocked.contains(player_green_2.location)) {
                blocked.remove(player_green_2.location);
                player_green_2.blocked.remove(player_green_2.location);
              }
              player_green_2.roll(dice_green.rolled);
              dice_green.choosePlayer = false;
              if (player_green_2.location == player_green_1.location && player_green_1.isOut == true) {
                print("Save");
                blocked.add(player_green_2.location);
                player_green_2.blocked.add(player_green_2.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              else if (player_green_2.location == player_green_3.location && player_green_3.isOut == true) {
                print("Save");
                blocked.add(player_green_2.location);
                player_green_2.blocked.add(player_green_2.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              else if (player_green_2.location == player_green_4.location && player_green_4.isOut == true) {
                print("Save");
                blocked.add(player_green_2.location);
                player_green_2.blocked.add(player_green_2.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.twoPlayer) {
                if (player_green_2.location == player_blue_1.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_2.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_3.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_4.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_blue.isTurn = true;
                  green_six_counter = 0;
                }
              }
              else if (activeMode == Mode.threePlayer) {
                if (player_green_2.location == player_blue_1.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_2.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_3.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_4.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_red_1.location &&
                    player_green_2.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_red_2.location &&
                    player_green_2.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_red_3.location &&
                    player_green_2.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_red_4.location &&
                    player_green_2.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_red.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  green_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_green_2.location == player_blue_1.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_2.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_3.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_blue_4.location &&
                    player_green_2.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_yellow_1.location &&
                    player_green_2.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(
                        player_yellow_1.x, player_yellow_1.y, raintileSize,
                        raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_yellow_2.location &&
                    player_green_2.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_2.dx;
                    player_yellow_2.y = yellow_home_2.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(
                        player_yellow_2.x, player_yellow_2.y, raintileSize,
                        raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_yellow_3.location &&
                    player_green_2.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(
                        player_yellow_3.x, player_yellow_3.y, raintileSize,
                        raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_yellow_4.location &&
                    player_green_2.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(
                        player_yellow_4.x, player_yellow_4.y, raintileSize,
                        raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_red_1.location &&
                    player_green_2.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_red_2.location &&
                    player_green_2.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_red_3.location &&
                    player_green_2.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_2.location == player_red_4.location &&
                    player_green_2.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_green_2.save.contains(player_green_2.location)) {
                    print("Save");
                    blocked.add(player_green_2.location);
                    player_green_2.blocked.add(player_green_2.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_green.choosePlayer == true &&
            player_green_3.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_green_3.position != 0 || dice_green.rolled == 6) {
            if (player_green_3.total_moved + dice_green.rolled <= 57 &&
                ((blocked.contains(player_green_3.location + dice_green.rolled) ==
                    false && player_green_3.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_3.location + dice_green.rolled - 52) == false && player_green_3.location + dice_green.rolled >= 53))) && (player_green_3.position != 0 || blocked.contains(1) == false)) {
              if (blocked.contains(player_green_3.location)) {
                blocked.remove(player_green_3.location);
                player_green_3.blocked.remove(player_green_3.location);
              }
              player_green_3.roll(dice_green.rolled);
              dice_green.choosePlayer = false;
              if (player_green_3.location == player_green_1.location && player_green_1.isOut == true) {
                print("Save");
                blocked.add(player_green_3.location);
                player_green_3.blocked.add(player_green_3.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              else if (player_green_3.location == player_green_2.location && player_green_2.isOut == true) {
                print("Save");
                blocked.add(player_green_3.location);
                player_green_3.blocked.add(player_green_3.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              else if (player_green_3.location == player_green_4.location && player_green_4.isOut == true) {
                print("Save");
                blocked.add(player_green_3.location);
                player_green_3.blocked.add(player_green_3.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.twoPlayer) {
                if (player_green_3.location == player_blue_1.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_2.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_3.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_4.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_blue.isTurn = true;
                  green_six_counter = 0;
                }
              }
              else if (activeMode == Mode.threePlayer) {
                if (player_green_3.location == player_blue_1.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_2.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_1.dx;
                    player_blue_2.y = blue_home_1.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_3.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_4.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_red_1.location &&
                    player_green_3.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_red_2.location &&
                    player_green_3.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_red_3.location &&
                    player_green_3.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_red_4.location &&
                    player_green_3.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_red.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  green_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_green_3.location == player_blue_1.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_2.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_3.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_blue_4.location &&
                    player_green_3.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_yellow_1.location &&
                    player_green_3.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(
                        player_yellow_1.x, player_yellow_1.y, raintileSize,
                        raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_yellow_2.location &&
                    player_green_3.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_2.dx;
                    player_yellow_2.y = yellow_home_2.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(
                        player_yellow_2.x, player_yellow_2.y, raintileSize,
                        raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_yellow_3.location &&
                    player_green_3.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_2.dx;
                    player_yellow_3.y = yellow_home_2.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(
                        player_yellow_3.x, player_yellow_3.y, raintileSize,
                        raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_yellow_4.location &&
                    player_green_3.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(
                        player_yellow_4.x, player_yellow_4.y, raintileSize,
                        raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_red_1.location &&
                    player_green_3.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_red_2.location &&
                    player_green_3.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_red_3.location &&
                    player_green_3.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_3.location == player_red_4.location &&
                    player_green_3.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_green_3.save.contains(player_green_3.location)) {
                    print("Save");
                    blocked.add(player_green_3.location);
                    player_green_3.blocked.add(player_green_3.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_green.choosePlayer == true &&
            player_green_4.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_green_4.position != 0 || dice_green.rolled == 6) {
            if (player_green_4.total_moved + dice_green.rolled <= 57 &&
                ((blocked.contains(player_green_4.location + dice_green.rolled) ==
                    false && player_green_4.location + dice_green.rolled <= 52) || ((blocked.contains(player_green_4.location + dice_green.rolled - 52) == false && player_green_4.location + dice_green.rolled >= 53))) && (player_green_4.position != 0 || blocked.contains(1) == false)) {
              if (blocked.contains(player_green_4.location)) {
                blocked.remove(player_green_4.location);
                player_green_4.blocked.remove(player_green_4.location);
              }
              player_green_4.roll(dice_green.rolled);
              dice_green.choosePlayer = false;
              if (player_green_4.location == player_green_1.location && player_green_1.isOut == true) {
                print("Save");
                blocked.add(player_green_4.location);
                player_green_4.blocked.add(player_green_4.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              else if (player_green_4.location == player_green_3.location && player_green_3.isOut == true) {
                print("Save");
                blocked.add(player_green_4.location);
                player_green_4.blocked.add(player_green_4.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              else if (player_green_4.location == player_green_2.location && player_green_2.isOut == true) {
                print("Save");
                blocked.add(player_green_4.location);
                player_green_4.blocked.add(player_green_4.location);
                if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = true;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    green_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.twoPlayer) {
                if (player_green_4.location == player_blue_1.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_2.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_3.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_4.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_blue.isTurn = true;
                  green_six_counter = 0;
                }
              }
              else if (activeMode == Mode.threePlayer) {
                if (player_green_4.location == player_blue_1.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_2.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_3.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_4.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_red_1.location &&
                    player_green_4.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_red_2.location &&
                    player_green_4.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_red_3.location &&
                    player_green_4.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_red_4.location &&
                    player_green_4.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_red.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  green_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_green_4.location == player_blue_1.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_2.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_3.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_blue_4.location &&
                    player_green_4.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_yellow_1.location &&
                    player_green_4.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(
                        player_yellow_1.x, player_yellow_1.y, raintileSize,
                        raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_yellow_2.location &&
                    player_green_4.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_2.dx;
                    player_yellow_2.y = yellow_home_2.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(
                        player_yellow_2.x, player_yellow_2.y, raintileSize,
                        raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_yellow_3.location &&
                    player_green_4.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(
                        player_yellow_3.x, player_yellow_3.y, raintileSize,
                        raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_yellow_4.location &&
                    player_green_4.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(
                        player_yellow_4.x, player_yellow_4.y, raintileSize,
                        raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_red_1.location &&
                    player_green_4.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_red_2.location &&
                    player_green_4.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_4.dx;
                    player_red_2.y = red_home_4.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_red_3.location &&
                    player_green_4.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (player_green_4.location == player_red_4.location &&
                    player_green_4.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_green_4.save.contains(player_green_4.location)) {
                    print("Save");
                    blocked.add(player_green_4.location);
                    player_green_4.blocked.add(player_green_4.location);
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      green_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_green.isTurn = true;
                    if (dice_green.rolled == 6 && green_six_counter <= 1) {
                      green_six_counter += 1;
                    } else {
                      green_six_counter = 0;
                    }
                  }
                }
                else if (dice_green.rolled == 6 && green_six_counter <= 1) {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  green_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  green_six_counter = 0;
                }
              }
            }
          }
        }
      }
      if (activeMode == Mode.fourPlayer) {
        if (dice_yellow.choosePlayer == true &&
            player_yellow_1.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_yellow_1.position != 0 || dice_yellow.rolled == 6) {
            if (player_yellow_1.total_moved + dice_yellow.rolled <= 57 &&
                ((blocked.contains(player_yellow_1.location + dice_yellow.rolled) ==
                    false && player_yellow_1.location + dice_yellow.rolled <= 52) || ((blocked.contains(player_yellow_1.location + dice_yellow.rolled - 52) == false && player_yellow_1.location + dice_yellow.rolled >= 53))) && (player_yellow_1.position != 0 || blocked.contains(14) == false)) {
              if (blocked.contains(player_yellow_1.location)) {
                blocked.remove(player_yellow_1.location);
                player_yellow_1.blocked.remove(player_yellow_1.location);
              }
              player_yellow_1.roll(dice_yellow.rolled);
              dice_yellow.choosePlayer = false;
              if (player_yellow_1.location == player_yellow_2.location && player_yellow_2.isOut == true) {
                print("Save");
                blocked.add(player_yellow_1.location);
                player_yellow_1.blocked.add(player_yellow_1.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              else if (player_yellow_1.location == player_yellow_3.location && player_yellow_3.isOut == true) {
                print("Save");
                blocked.add(player_yellow_1.location);
                player_yellow_1.blocked.add(player_yellow_1.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              else if (player_yellow_1.location == player_yellow_4.location && player_yellow_4.isOut == true) {
                print("Save");
                blocked.add(player_yellow_1.location);
                player_yellow_1.blocked.add(player_yellow_1.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.fourPlayer) {
                if (player_yellow_1.location == player_blue_1.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_blue_2.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_blue_3.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_blue_4.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_green_1.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_green_2.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_green_3.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_green_4.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_red_1.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_red_2.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_red_3.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_1.location == player_red_4.location &&
                    player_yellow_1.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_yellow_1.save.contains(player_yellow_1.location)) {
                    print("Save");
                    blocked.add(player_yellow_1.location);
                    player_yellow_1.blocked.add(player_yellow_1.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  yellow_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_yellow.choosePlayer == true &&
            player_yellow_2.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_yellow_2.position != 0 || dice_yellow.rolled == 6) {
            if (player_yellow_2.total_moved + dice_yellow.rolled <= 57 &&
                ((blocked.contains(player_yellow_2.location + dice_yellow.rolled) ==
                    false && player_yellow_2.location + dice_yellow.rolled <= 52) || ((blocked.contains(player_yellow_2.location + dice_yellow.rolled - 52) == false && player_yellow_2.location + dice_yellow.rolled >= 53))) && (player_yellow_2.position != 0 || blocked.contains(14) == false)) {
              if (blocked.contains(player_yellow_2.location)) {
                blocked.remove(player_yellow_2.location);
                player_yellow_2.blocked.remove(player_yellow_2.location);
              }
              player_yellow_2.roll(dice_yellow.rolled);
              dice_yellow.choosePlayer = false;
              if (player_yellow_2.location == player_yellow_1.location && player_yellow_1.isOut == true) {
                print("Save");
                blocked.add(player_yellow_2.location);
                player_yellow_2.blocked.add(player_yellow_2.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              else if (player_yellow_2.location == player_yellow_3.location && player_yellow_3.isOut == true) {
                print("Save");
                blocked.add(player_yellow_2.location);
                player_yellow_2.blocked.add(player_yellow_2.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              else if (player_yellow_2.location == player_yellow_4.location && player_yellow_4.isOut == true) {
                print("Save");
                blocked.add(player_yellow_2.location);
                player_yellow_2.blocked.add(player_yellow_2.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.fourPlayer) {
                if (player_yellow_2.location == player_blue_1.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_blue_2.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_blue_3.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_blue_4.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_green_1.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_green_2.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_green_3.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_green_4.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_red_1.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_red_2.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_red_3.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_2.location == player_red_4.location &&
                    player_yellow_2.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_yellow_2.save.contains(player_yellow_2.location)) {
                    print("Save");
                    blocked.add(player_yellow_2.location);
                    player_yellow_2.blocked.add(player_yellow_2.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  yellow_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_yellow.choosePlayer == true &&
            player_yellow_3.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_yellow_3.position != 0 || dice_yellow.rolled == 6) {
            if (player_yellow_3.total_moved + dice_yellow.rolled <= 57 &&
                ((blocked.contains(player_yellow_3.location + dice_yellow.rolled) ==
                    false && player_yellow_3.location + dice_yellow.rolled <= 52) || ((blocked.contains(player_yellow_3.location + dice_yellow.rolled - 52) == false && player_yellow_3.location + dice_yellow.rolled >= 53))) && (player_yellow_3.position != 0 || blocked.contains(14) == false)) {
              if (blocked.contains(player_yellow_3.location)) {
                blocked.remove(player_yellow_3.location);
                player_yellow_3.blocked.remove(player_yellow_3.location);
              }
              player_yellow_3.roll(dice_yellow.rolled);
              dice_yellow.choosePlayer = false;
              if (player_yellow_3.location == player_yellow_2.location && player_yellow_2.isOut == true) {
                print("Save");
                blocked.add(player_yellow_3.location);
                player_yellow_3.blocked.add(player_yellow_3.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              else if (player_yellow_3.location == player_yellow_1.location && player_yellow_1.isOut == true) {
                print("Save");
                blocked.add(player_yellow_3.location);
                player_yellow_3.blocked.add(player_yellow_3.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              else if (player_yellow_3.location == player_yellow_4.location && player_yellow_4.isOut == true) {
                print("Save");
                blocked.add(player_yellow_3.location);
                player_yellow_3.blocked.add(player_yellow_3.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.fourPlayer) {
                if (player_yellow_3.location == player_blue_1.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_blue_2.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_blue_3.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_blue_4.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_green_1.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_green_2.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_green_3.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_green_4.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_red_1.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_red_2.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_red_3.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_3.location == player_red_4.location &&
                    player_yellow_3.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_yellow_3.save.contains(player_yellow_3.location)) {
                    print("Save");
                    blocked.add(player_yellow_3.location);
                    player_yellow_3.blocked.add(player_yellow_3.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  yellow_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_yellow.choosePlayer == true &&
            player_yellow_4.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_yellow_4.position != 0 || dice_yellow.rolled == 6) {
            if (player_yellow_4.total_moved + dice_yellow.rolled <= 57 &&
                ((blocked.contains(player_yellow_4.location + dice_yellow.rolled) ==
                    false && player_yellow_4.location + dice_yellow.rolled <= 52) || ((blocked.contains(player_yellow_4.location + dice_yellow.rolled - 52) == false && player_yellow_4.location + dice_yellow.rolled >= 53))) && (player_yellow_4.position != 0 || blocked.contains(14) == false)) {
              if (blocked.contains(player_yellow_4.location)) {
                blocked.remove(player_yellow_4.location);
                player_yellow_4.blocked.remove(player_yellow_4.location);
              }
              player_yellow_4.roll(dice_yellow.rolled);
              dice_yellow.choosePlayer = false;
              if (player_yellow_4.location == player_yellow_1.location && player_yellow_1.isOut == true) {
                print("Save");
                blocked.add(player_yellow_4.location);
                player_yellow_4.blocked.add(player_yellow_4.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              else if (player_yellow_4.location == player_yellow_2.location && player_yellow_2.isOut == true) {
                print("Save");
                blocked.add(player_yellow_4.location);
                player_yellow_4.blocked.add(player_yellow_4.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              else if (player_yellow_4.location == player_yellow_3.location && player_yellow_3.isOut == true) {
                print("Save");
                blocked.add(player_yellow_4.location);
                player_yellow_4.blocked.add(player_yellow_4.location);
                if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = true;
                    yellow_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.fourPlayer) {
                if (player_yellow_4.location == player_blue_1.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_blue_2.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_blue_3.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_blue_4.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_green_1.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_green_2.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_green_3.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_green_4.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_red_1.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(
                        player_red_1.x, player_red_1.y, raintileSize,
                        raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_red_2.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(
                        player_red_2.x, player_red_2.y, raintileSize,
                        raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_red_3.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(
                        player_red_3.x, player_red_3.y, raintileSize,
                        raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (player_yellow_4.location == player_red_4.location &&
                    player_yellow_4.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if (player_yellow_4.save.contains(player_yellow_4.location)) {
                    print("Save");
                    blocked.add(player_yellow_4.location);
                    player_yellow_4.blocked.add(player_yellow_4.location);
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = true;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      yellow_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      yellow_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(
                        player_red_4.x, player_red_4.y, raintileSize,
                        raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_yellow.isTurn = true;
                    if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                      yellow_six_counter += 1;
                    } else {
                      yellow_six_counter = 0;
                    }
                  }
                }
                else if (dice_yellow.rolled == 6 && yellow_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  yellow_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  yellow_six_counter = 0;
                }
              }
            }
          }
        }
      }
      if (activeMode == Mode.threePlayer || activeMode == Mode.fourPlayer) {
        if (dice_red.choosePlayer == true &&
            player_red_1.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_red_1.position != 0 || dice_red.rolled == 6) {
            if (player_red_1.total_moved + dice_red.rolled <= 57 &&
                ((blocked.contains(player_red_1.location + dice_red.rolled) ==
                    false && player_red_1.location + dice_red.rolled <= 52) || ((blocked.contains(player_red_1.location + dice_red.rolled - 52) == false && player_red_1.location + dice_red.rolled >= 53))) && (player_red_1.position != 0 || blocked.contains(40) == false)) {
              if (blocked.contains(player_red_1.location)) {
                blocked.remove(player_red_1.location);
                player_red_1.blocked.remove(player_red_1.location);
              }
              player_red_1.roll(dice_red.rolled);
              dice_red.choosePlayer = false;
              if (player_red_1.location == player_red_2.location && player_red_2.isOut == true) {
                print("Save");
                blocked.add(player_red_1.location);
                player_red_1.blocked.add(player_red_1.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              else if (player_red_1.location == player_red_3.location && player_red_3.isOut == true) {
                print("Save");
                blocked.add(player_red_1.location);
                player_red_1.blocked.add(player_red_1.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              else if (player_red_1.location == player_red_4.location && player_red_4.isOut == true) {
                print("Save");
                blocked.add(player_red_1.location);
                player_red_1.blocked.add(player_red_1.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.threePlayer) {
                if (player_red_1.location == player_blue_1.location &&
                    player_red_1.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_blue_2.location &&
                    player_red_1.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_blue_3.location &&
                    player_red_1.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_blue_4.location &&
                    player_red_1.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_green_1.location &&
                    player_red_1.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_green_2.location &&
                    player_red_1.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_green_3.location &&
                    player_red_1.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_green_4.location &&
                    player_red_1.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  red_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_red_1.location == player_blue_1.location &&
                    player_red_1.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_blue_2.location &&
                    player_red_1.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_blue_3.location &&
                    player_red_1.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_blue_4.location &&
                    player_red_1.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_green_1.location &&
                    player_red_1.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_green_2.location &&
                    player_red_1.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_green_3.location &&
                    player_red_1.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_green_4.location &&
                    player_red_1.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_yellow_1.location &&
                    player_red_1.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(
                        player_yellow_1.x, player_yellow_1.y, raintileSize,
                        raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_yellow_2.location &&
                    player_red_1.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_2.dx;
                    player_yellow_2.y = yellow_home_2.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(
                        player_yellow_2.x, player_yellow_2.y, raintileSize,
                        raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_yellow_3.location &&
                    player_red_1.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(
                        player_yellow_3.x, player_yellow_3.y, raintileSize,
                        raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_1.location == player_yellow_4.location &&
                    player_red_1.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_red_1.save.contains(player_red_1.location)) {
                    print("Save");
                    blocked.add(player_red_1.location);
                    player_red_1.blocked.add(player_red_1.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(
                        player_yellow_4.x, player_yellow_4.y, raintileSize,
                        raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  red_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  red_six_counter = 0;
                }
              }
            }
          }
        }
        print('Blocked : $blocked');
        if (dice_red.choosePlayer == true &&
            player_red_2.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_red_2.position != 0 || dice_red.rolled == 6) {
            if (player_red_2.total_moved + dice_red.rolled <= 57 &&
                ((blocked.contains(player_red_2.location + dice_red.rolled) ==
                    false && player_red_2.location + dice_red.rolled <= 52) || ((blocked.contains(player_red_2.location + dice_red.rolled - 52) == false && player_red_2.location + dice_red.rolled >= 53))) && (player_red_2.position != 0 || blocked.contains(40) == false)) {
              if (blocked.contains(player_red_2.location)) {
                blocked.remove(player_red_2.location);
                player_red_2.blocked.remove(player_red_2.location);
              }
              player_red_2.roll(dice_red.rolled);
              dice_red.choosePlayer = false;
              if (player_red_2.location == player_red_1.location && player_red_1.isOut == true) {
                print("Save");
                blocked.add(player_red_2.location);
                player_red_2.blocked.add(player_red_2.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              else if (player_red_2.location == player_red_3.location && player_red_3.isOut == true) {
                print("Save");
                blocked.add(player_red_2.location);
                player_red_2.blocked.add(player_red_2.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              else if (player_red_2.location == player_red_4.location && player_red_4.isOut == true) {
                print("Save");
                blocked.add(player_red_2.location);
                player_red_2.blocked.add(player_red_2.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.threePlayer) {
                if (player_red_2.location == player_blue_1.location &&
                    player_red_2.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_blue_2.location &&
                    player_red_2.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_blue_3.location &&
                    player_red_2.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_blue_4.location &&
                    player_red_2.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_green_1.location &&
                    player_red_2.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_green_2.location &&
                    player_red_2.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_green_3.location &&
                    player_red_2.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_green_4.location &&
                    player_red_2.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  red_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_red_2.location == player_blue_1.location &&
                    player_red_2.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_blue_2.location &&
                    player_red_2.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_blue_3.location &&
                    player_red_2.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_blue_4.location &&
                    player_red_2.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_green_1.location &&
                    player_red_2.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_green_2.location &&
                    player_red_2.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_green_3.location &&
                    player_red_2.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_green_4.location &&
                    player_red_2.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_yellow_1.location &&
                    player_red_2.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(
                        player_yellow_1.x, player_yellow_1.y, raintileSize,
                        raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_yellow_2.location &&
                    player_red_2.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_2.dx;
                    player_yellow_2.y = yellow_home_2.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(
                        player_yellow_2.x, player_yellow_2.y, raintileSize,
                        raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_yellow_3.location &&
                    player_red_2.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(
                        player_yellow_3.x, player_yellow_3.y, raintileSize,
                        raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_2.location == player_yellow_4.location &&
                    player_red_2.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_red_2.save.contains(player_red_2.location)) {
                    print("Save");
                    blocked.add(player_red_2.location);
                    player_red_2.blocked.add(player_red_2.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(
                        player_yellow_4.x, player_yellow_4.y, raintileSize,
                        raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  red_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  red_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_red.choosePlayer == true &&
            player_red_3.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_red_3.position != 0 || dice_red.rolled == 6) {
            if (player_red_3.total_moved + dice_red.rolled <= 57 &&
                ((blocked.contains(player_red_2.location + dice_red.rolled) ==
                    false && player_red_2.location + dice_red.rolled <= 52) || ((blocked.contains(player_red_2.location + dice_red.rolled - 52) == false && player_red_2.location + dice_red.rolled >= 53))) && (player_red_3.position != 0 || blocked.contains(40) == false)) {
              if (blocked.contains(player_red_3.location)) {
                blocked.remove(player_red_3.location);
                player_red_3.blocked.remove(player_red_3.location);
              }
              player_red_3.roll(dice_red.rolled);
              dice_red.choosePlayer = false;
              if (player_red_3.location == player_red_2.location && player_red_2.isOut == true) {
                print("Save");
                blocked.add(player_red_3.location);
                player_red_3.blocked.add(player_red_3.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              else if (player_red_3.location == player_red_1.location && player_red_1.isOut == true) {
                print("Save");
                blocked.add(player_red_3.location);
                player_red_3.blocked.add(player_red_3.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              else if (player_red_3.location == player_red_4.location && player_red_4.isOut == true) {
                print("Save");
                blocked.add(player_red_3.location);
                player_red_3.blocked.add(player_red_3.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.threePlayer) {
                if (player_red_3.location == player_blue_1.location &&
                    player_red_3.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_blue_2.location &&
                    player_red_3.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_blue_3.location &&
                    player_red_3.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_blue_4.location &&
                    player_red_3.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_green_1.location &&
                    player_red_3.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_green_2.location &&
                    player_red_3.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_green_3.location &&
                    player_red_3.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_green_4.location &&
                    player_red_3.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  red_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_red_3.location == player_blue_1.location &&
                    player_red_3.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_blue_2.location &&
                    player_red_3.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_blue_3.location &&
                    player_red_3.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_blue_4.location &&
                    player_red_3.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_green_1.location &&
                    player_red_3.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_green_2.location &&
                    player_red_3.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_green_3.location &&
                    player_red_3.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_green_4.location &&
                    player_red_3.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_yellow_1.location &&
                    player_red_3.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(
                        player_yellow_1.x, player_yellow_1.y, raintileSize,
                        raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_yellow_2.location &&
                    player_red_3.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_2.dx;
                    player_yellow_2.y = yellow_home_2.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(
                        player_yellow_2.x, player_yellow_2.y, raintileSize,
                        raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_yellow_3.location &&
                    player_red_3.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(
                        player_yellow_3.x, player_yellow_3.y, raintileSize,
                        raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_3.location == player_yellow_4.location &&
                    player_red_3.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_red_3.save.contains(player_red_3.location)) {
                    print("Save");
                    blocked.add(player_red_3.location);
                    player_red_3.blocked.add(player_red_3.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(
                        player_yellow_4.x, player_yellow_4.y, raintileSize,
                        raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  red_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  red_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_red.choosePlayer == true &&
            player_red_4.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_red_4.position != 0 || dice_red.rolled == 6) {
            if (player_red_4.total_moved + dice_red.rolled <= 57 &&
                ((blocked.contains(player_red_4.location + dice_red.rolled) ==
                    false && player_red_4.location + dice_red.rolled <= 52) || ((blocked.contains(player_red_4.location + dice_red.rolled - 52) == false && player_red_4.location + dice_red.rolled >= 53))) && (player_red_4.position != 0 || blocked.contains(40) == false)) {
              if (blocked.contains(player_red_4.location)) {
                blocked.remove(player_red_4.location);
                player_red_4.blocked.remove(player_red_4.location);
              }
              player_red_4.roll(dice_red.rolled);
              dice_red.choosePlayer = false;
              if (player_red_4.location == player_red_2.location && player_red_2.isOut == true) {
                print("Save");
                blocked.add(player_red_4.location);
                player_red_4.blocked.add(player_red_4.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              else if (player_red_4.location == player_red_1.location && player_red_1.isOut == true) {
                print("Save");
                blocked.add(player_red_4.location);
                player_red_4.blocked.add(player_red_4.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              else if (player_red_4.location == player_red_3.location && player_red_3.isOut == true) {
                print("Save");
                blocked.add(player_red_4.location);
                player_red_4.blocked.add(player_red_4.location);
                if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    red_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.threePlayer) {
                if (player_red_4.location == player_blue_1.location &&
                    player_red_4.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_blue_2.location &&
                    player_red_4.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_blue_3.location &&
                    player_red_4.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_blue_4.location &&
                    player_red_4.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_green_1.location &&
                    player_red_4.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_green_2.location &&
                    player_red_4.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_green_3.location &&
                    player_red_4.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_green_4.location &&
                    player_red_4.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  red_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  red_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_red_4.location == player_blue_1.location &&
                    player_red_4.inHomeStrip == false &&
                    player_blue_1.inHomeStrip == false && player_blue_1.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_1.isOut = false;
                    player_blue_1.location = 27;
                    player_blue_1.position = 0;
                    player_blue_1.x = blue_home_1.dx;
                    player_blue_1.y = blue_home_1.dy;
                    player_blue_1.playerRect = Rect.fromLTWH(
                        player_blue_1.x, player_blue_1.y, raintileSize,
                        raintileSize);
                    player_blue_1.total_moved = 1;
                    player_blue_1.counter = 0;
                    player_blue_1.rolled = 0;
                    player_blue_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_blue_2.location &&
                    player_red_4.inHomeStrip == false &&
                    player_blue_2.inHomeStrip == false && player_blue_2.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_2.isOut = false;
                    player_blue_2.location = 27;
                    player_blue_2.position = 0;
                    player_blue_2.x = blue_home_2.dx;
                    player_blue_2.y = blue_home_2.dy;
                    player_blue_2.playerRect = Rect.fromLTWH(
                        player_blue_2.x, player_blue_2.y, raintileSize,
                        raintileSize);
                    player_blue_2.total_moved = 1;
                    player_blue_2.counter = 0;
                    player_blue_2.rolled = 0;
                    player_blue_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_blue_3.location &&
                    player_red_4.inHomeStrip == false &&
                    player_blue_3.inHomeStrip == false && player_blue_3.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_3.isOut = false;
                    player_blue_3.location = 27;
                    player_blue_3.position = 0;
                    player_blue_3.x = blue_home_3.dx;
                    player_blue_3.y = blue_home_3.dy;
                    player_blue_3.playerRect = Rect.fromLTWH(
                        player_blue_3.x, player_blue_3.y, raintileSize,
                        raintileSize);
                    player_blue_3.total_moved = 1;
                    player_blue_3.counter = 0;
                    player_blue_3.rolled = 0;
                    player_blue_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_blue_4.location &&
                    player_red_4.inHomeStrip == false &&
                    player_blue_4.inHomeStrip == false && player_blue_4.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_blue_4.isOut = false;
                    player_blue_4.location = 27;
                    player_blue_4.position = 0;
                    player_blue_4.x = blue_home_4.dx;
                    player_blue_4.y = blue_home_4.dy;
                    player_blue_4.playerRect = Rect.fromLTWH(
                        player_blue_4.x, player_blue_4.y, raintileSize,
                        raintileSize);
                    player_blue_4.total_moved = 1;
                    player_blue_4.counter = 0;
                    player_blue_4.rolled = 0;
                    player_blue_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_green_1.location &&
                    player_red_4.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(
                        player_green_1.x, player_green_1.y, raintileSize,
                        raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_green_2.location &&
                    player_red_4.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(
                        player_green_2.x, player_green_2.y, raintileSize,
                        raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_green_3.location &&
                    player_red_4.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(
                        player_green_3.x, player_green_3.y, raintileSize,
                        raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_green_4.location &&
                    player_red_4.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(
                        player_green_4.x, player_green_4.y, raintileSize,
                        raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_yellow_1.location &&
                    player_red_4.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(
                        player_yellow_1.x, player_yellow_1.y, raintileSize,
                        raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_yellow_2.location &&
                    player_red_4.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_2.dx;
                    player_yellow_2.y = yellow_home_2.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(
                        player_yellow_2.x, player_yellow_2.y, raintileSize,
                        raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_yellow_3.location &&
                    player_red_4.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(
                        player_yellow_3.x, player_yellow_3.y, raintileSize,
                        raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (player_red_4.location == player_yellow_4.location &&
                    player_red_4.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if (player_red_4.save.contains(player_red_4.location)) {
                    print("Save");
                    blocked.add(player_red_4.location);
                    player_red_4.blocked.add(player_red_4.location);
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      red_six_counter += 1;
                    } else {
                      dice_green.isTurn = true;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = false;
                      red_six_counter = 0;
                    }
                  } else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(
                        player_yellow_4.x, player_yellow_4.y, raintileSize,
                        raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_red.isTurn = true;
                    if (dice_red.rolled == 6 && red_six_counter <= 1) {
                      red_six_counter += 1;
                    } else {
                      red_six_counter = 0;
                    }
                  }
                }
                else if (dice_red.rolled == 6 && red_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  red_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = false;
                  dice_yellow.isTurn = false;
                  red_six_counter = 0;
                }
              }
            }
          }
        }
      }
      if (activeMode == Mode.twoPlayer || activeMode == Mode.threePlayer ||
          activeMode == Mode.fourPlayer) {
        if (dice_blue.choosePlayer == true &&
            player_blue_1.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_blue_1.position != 0 || dice_blue.rolled == 6) {
            if (player_blue_1.total_moved + dice_blue.rolled <= 57 &&
                ((blocked.contains(player_blue_1.location + dice_blue.rolled) ==
                    false && player_blue_1.location + dice_blue.rolled <= 52) || ((blocked.contains(player_blue_1.location + dice_blue.rolled - 52) == false && player_blue_1.location + dice_blue.rolled >= 53))) && (player_blue_1.position != 0 || blocked.contains(27) == false)) {
              if (blocked.contains(player_blue_1.location)) {
                blocked.remove(player_blue_1.location);
                player_blue_1.blocked.remove(player_blue_1.location);
              }
              player_blue_1.roll(dice_blue.rolled);
              dice_blue.choosePlayer = false;
              if (player_blue_1.location == player_blue_2.location && player_blue_2.isOut == true) {
                print("Save");
                blocked.add(player_blue_1.location);
                player_blue_1.blocked.add(player_blue_1.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              else if (player_blue_1.location == player_blue_3.location && player_blue_3.isOut == true) {
                print("Save");
                blocked.add(player_blue_1.location);
                player_blue_1.blocked.add(player_blue_1.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              else if (player_blue_1.location == player_blue_4.location && player_blue_4.isOut == true) {
                print("Save");
                blocked.add(player_blue_1.location);
                player_blue_1.blocked.add(player_blue_1.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.twoPlayer) {
                if (player_blue_1.location == player_green_1.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_2.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_3.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_4.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
              else if (activeMode == Mode.threePlayer) {
                if (player_blue_1.location == player_red_1.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(player_red_1.x, player_red_1.y, raintileSize, raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_red_2.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(player_red_2.x, player_red_2.y, raintileSize, raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_red_3.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(player_red_3.x, player_red_3.y, raintileSize, raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_red_4.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(player_red_4.x, player_red_4.y, raintileSize, raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_1.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_2.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_3.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_4.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_blue_1.location == player_red_1.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(player_red_1.x, player_red_1.y, raintileSize, raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_red_2.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(player_red_2.x, player_red_2.y, raintileSize, raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_red_3.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(player_red_3.x, player_red_3.y, raintileSize, raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_red_4.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(player_red_4.x, player_red_4.y, raintileSize, raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_1.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_2.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_3.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_green_4.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_yellow_1.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(player_yellow_1.x, player_yellow_1.y, raintileSize, raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_yellow_2.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_1.dx;
                    player_yellow_2.y = yellow_home_1.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(player_yellow_2.x, player_yellow_2.y, raintileSize, raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_yellow_3.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(player_yellow_3.x, player_yellow_3.y, raintileSize, raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_1.location == player_yellow_4.location &&
                    player_blue_1.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if(player_blue_1.save.contains(player_blue_1.location)){
                    print("Save");
                    blocked.add(player_blue_1.location);
                    player_blue_1.blocked.add(player_blue_1.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(player_yellow_4.x, player_yellow_4.y, raintileSize, raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_blue.choosePlayer == true &&
            player_blue_2.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_blue_2.position != 0 || dice_blue.rolled == 6) {
            if (player_blue_2.total_moved + dice_blue.rolled <= 57 &&
                ((blocked.contains(player_blue_2.location + dice_blue.rolled) ==
                    false && player_blue_2.location + dice_blue.rolled <= 52) || ((blocked.contains(player_blue_2.location + dice_blue.rolled - 52) == false && player_blue_2.location + dice_blue.rolled >= 53))) && (player_blue_2.position != 0 || blocked.contains(27) == false)) {
              if (blocked.contains(player_blue_2.location)) {
                blocked.remove(player_blue_2.location);
                player_blue_2.blocked.remove(player_blue_2.location);
              }
              player_blue_2.roll(dice_blue.rolled);
              dice_blue.choosePlayer = false;
              if (player_blue_2.location == player_blue_1.location && player_blue_1.isOut == true) {
                print("Save");
                blocked.add(player_blue_2.location);
                player_blue_2.blocked.add(player_blue_2.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              else if (player_blue_2.location == player_blue_3.location && player_blue_3.isOut == true) {
                print("Save");
                blocked.add(player_blue_2.location);
                player_blue_2.blocked.add(player_blue_2.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              else if (player_blue_2.location == player_blue_4.location && player_blue_4.isOut == true) {
                print("Save");
                blocked.add(player_blue_2.location);
                player_blue_2.blocked.add(player_blue_2.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.twoPlayer) {
                if (player_blue_2.location == player_green_1.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_2.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_3.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_4.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
              else if (activeMode == Mode.threePlayer) {
                if (player_blue_2.location == player_red_1.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(player_red_1.x, player_red_1.y, raintileSize, raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_red_2.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(player_red_2.x, player_red_2.y, raintileSize, raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_red_3.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(player_red_3.x, player_red_3.y, raintileSize, raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_red_4.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(player_red_4.x, player_red_4.y, raintileSize, raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_1.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_2.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_3.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_4.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_blue_2.location == player_red_1.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(player_red_1.x, player_red_1.y, raintileSize, raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_red_2.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(player_red_2.x, player_red_2.y, raintileSize, raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_red_3.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(player_red_3.x, player_red_3.y, raintileSize, raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_red_4.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(player_red_4.x, player_red_4.y, raintileSize, raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_1.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_2.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_3.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_green_4.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_yellow_1.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(player_yellow_1.x, player_yellow_1.y, raintileSize, raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_yellow_2.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_1.dx;
                    player_yellow_2.y = yellow_home_1.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(player_yellow_2.x, player_yellow_2.y, raintileSize, raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_yellow_3.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(player_yellow_3.x, player_yellow_3.y, raintileSize, raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_2.location == player_yellow_4.location &&
                    player_blue_2.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if(player_blue_2.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_2.location);
                    player_blue_2.blocked.add(player_blue_2.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(player_yellow_4.x, player_yellow_4.y, raintileSize, raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_blue.choosePlayer == true &&
            player_blue_3.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_blue_3.position != 0 || dice_blue.rolled == 6) {
            if (player_blue_3.total_moved + dice_blue.rolled <= 57 &&
                ((blocked.contains(player_blue_3.location + dice_blue.rolled) ==
                    false && player_blue_3.location + dice_blue.rolled <= 52) || ((blocked.contains(player_blue_3.location + dice_blue.rolled - 52) == false && player_blue_3.location + dice_blue.rolled >= 53))) && (player_blue_3.position != 0 || blocked.contains(27) == false)) {
              if (blocked.contains(player_blue_3.location)) {
                blocked.remove(player_blue_3.location);
                player_blue_3.blocked.remove(player_blue_3.location);
              }
              player_blue_3.roll(dice_blue.rolled);
              dice_blue.choosePlayer = false;
              if (player_blue_3.location == player_blue_2.location && player_blue_2.isOut == true) {
                print("Save");
                blocked.add(player_blue_3.location);
                player_blue_3.blocked.add(player_blue_3.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              else if (player_blue_3.location == player_blue_1.location && player_blue_1.isOut == true) {
                print("Save");
                blocked.add(player_blue_3.location);
                player_blue_3.blocked.add(player_blue_3.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              else if (player_blue_3.location == player_blue_4.location && player_blue_4.isOut == true) {
                print("Save");
                blocked.add(player_blue_3.location);
                player_blue_3.blocked.add(player_blue_3.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.twoPlayer) {
                if (player_blue_3.location == player_green_1.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_2.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_3.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_4.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
              else if (activeMode == Mode.threePlayer) {
                if (player_blue_3.location == player_red_1.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(player_red_1.x, player_red_1.y, raintileSize, raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_red_2.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(player_red_2.x, player_red_2.y, raintileSize, raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_red_3.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_2.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(player_red_3.x, player_red_3.y, raintileSize, raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_red_4.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(player_red_4.x, player_red_4.y, raintileSize, raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_1.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_2.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_3.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_4.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_blue_3.location == player_red_1.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(player_red_1.x, player_red_1.y, raintileSize, raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_red_2.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(player_red_2.x, player_red_2.y, raintileSize, raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_red_3.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(player_red_3.x, player_red_3.y, raintileSize, raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_red_4.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(player_red_4.x, player_red_4.y, raintileSize, raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_1.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_2.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_3.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_green_4.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_yellow_1.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(player_yellow_1.x, player_yellow_1.y, raintileSize, raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_yellow_2.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_1.dx;
                    player_yellow_2.y = yellow_home_1.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(player_yellow_2.x, player_yellow_2.y, raintileSize, raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_yellow_3.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(player_yellow_3.x, player_yellow_3.y, raintileSize, raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_3.location == player_yellow_4.location &&
                    player_blue_3.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if(player_blue_3.save.contains(player_blue_3.location)){
                    print("Save");
                    blocked.add(player_blue_3.location);
                    player_blue_3.blocked.add(player_blue_3.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(player_yellow_4.x, player_yellow_4.y, raintileSize, raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
            }
          }
        }
        if (dice_blue.choosePlayer == true &&
            player_blue_4.playerRect.inflate(playertileSize / 2).contains(
                d.globalPosition)) {
          if (player_blue_4.position != 0 || dice_blue.rolled == 6) {
            if (player_blue_4.total_moved + dice_blue.rolled <= 57 &&
                ((blocked.contains(player_blue_4.location + dice_blue.rolled) ==
                    false && player_blue_4.location + dice_blue.rolled <= 52) || ((blocked.contains(player_blue_4.location + dice_blue.rolled - 52) == false && player_blue_4.location + dice_blue.rolled >= 53))) && (player_blue_4.position != 0 || blocked.contains(27) == false)) {
              if (blocked.contains(player_blue_4.location)) {
                blocked.remove(player_blue_4.location);
                player_blue_4.blocked.remove(player_blue_4.location);
              }
              player_blue_4.roll(dice_blue.rolled);
              dice_blue.choosePlayer = false;
              if (player_blue_4.location == player_blue_1.location && player_blue_1.isOut == true) {
                print("Save");
                blocked.add(player_blue_4.location);
                player_blue_4.blocked.add(player_blue_4.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              else if (player_blue_4.location == player_blue_2.location && player_blue_2.isOut == true) {
                print("Save");
                blocked.add(player_blue_4.location);
                player_blue_4.blocked.add(player_blue_4.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              else if (player_blue_4.location == player_blue_3.location && player_blue_3.isOut == true) {
                print("Save");
                blocked.add(player_blue_4.location);
                player_blue_4.blocked.add(player_blue_4.location);
                if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  if(activeMode == Mode.twoPlayer){
                    dice_green.isTurn = true;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = false;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.threePlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                  else if(activeMode == Mode.fourPlayer){
                    dice_green.isTurn = false;
                    dice_yellow.isTurn = false;
                    dice_red.isTurn = true;
                    dice_blue.isTurn = false;
                    blue_six_counter = 0;
                  }
                }
              }
              if (activeMode == Mode.twoPlayer) {
                if (player_blue_4.location == player_green_1.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_2.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_3.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_4.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
              else if (activeMode == Mode.threePlayer) {
                if (player_blue_4.location == player_red_1.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(player_red_1.x, player_red_1.y, raintileSize, raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_red_2.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(player_red_2.x, player_red_2.y, raintileSize, raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_red_3.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(player_red_3.x, player_red_3.y, raintileSize, raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_red_4.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(player_red_4.x, player_red_4.y, raintileSize, raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_1.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_2.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_3.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_4.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
              else if (activeMode == Mode.fourPlayer) {
                if (player_blue_4.location == player_red_1.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_red_1.inHomeStrip == false && player_red_1.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_1.isOut = false;
                    player_red_1.location = 40;
                    player_red_1.position = 0;
                    player_red_1.x = red_home_1.dx;
                    player_red_1.y = red_home_1.dy;
                    player_red_1.playerRect = Rect.fromLTWH(player_red_1.x, player_red_1.y, raintileSize, raintileSize);
                    player_red_1.total_moved = 1;
                    player_red_1.counter = 0;
                    player_red_1.rolled = 0;
                    player_red_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_red_2.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_red_2.inHomeStrip == false && player_red_2.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_2.isOut = false;
                    player_red_2.location = 40;
                    player_red_2.position = 0;
                    player_red_2.x = red_home_2.dx;
                    player_red_2.y = red_home_2.dy;
                    player_red_2.playerRect = Rect.fromLTWH(player_red_2.x, player_red_2.y, raintileSize, raintileSize);
                    player_red_2.total_moved = 1;
                    player_red_2.counter = 0;
                    player_red_2.rolled = 0;
                    player_red_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_red_3.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_red_3.inHomeStrip == false && player_red_3.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_3.isOut = false;
                    player_red_3.location = 40;
                    player_red_3.position = 0;
                    player_red_3.x = red_home_3.dx;
                    player_red_3.y = red_home_3.dy;
                    player_red_3.playerRect = Rect.fromLTWH(player_red_3.x, player_red_3.y, raintileSize, raintileSize);
                    player_red_3.total_moved = 1;
                    player_red_3.counter = 0;
                    player_red_3.rolled = 0;
                    player_red_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_red_4.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_red_4.inHomeStrip == false && player_red_4.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_red_4.isOut = false;
                    player_red_4.location = 40;
                    player_red_4.position = 0;
                    player_red_4.x = red_home_4.dx;
                    player_red_4.y = red_home_4.dy;
                    player_red_4.playerRect = Rect.fromLTWH(player_red_4.x, player_red_4.y, raintileSize, raintileSize);
                    player_red_4.total_moved = 1;
                    player_red_4.counter = 0;
                    player_red_4.rolled = 0;
                    player_red_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_1.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_1.inHomeStrip == false && player_green_1.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_1.isOut = false;
                    player_green_1.location = 1;
                    player_green_1.position = 0;
                    player_green_1.x = green_home_1.dx;
                    player_green_1.y = green_home_1.dy;
                    player_green_1.playerRect = Rect.fromLTWH(player_green_1.x, player_green_1.y, raintileSize, raintileSize);
                    player_green_1.total_moved = 1;
                    player_green_1.counter = 0;
                    player_green_1.rolled = 0;
                    player_green_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_2.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_2.inHomeStrip == false && player_green_2.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_2.isOut = false;
                    player_green_2.location = 1;
                    player_green_2.position = 0;
                    player_green_2.x = green_home_2.dx;
                    player_green_2.y = green_home_2.dy;
                    player_green_2.playerRect = Rect.fromLTWH(player_green_2.x, player_green_2.y, raintileSize, raintileSize);
                    player_green_2.total_moved = 1;
                    player_green_2.counter = 0;
                    player_green_2.rolled = 0;
                    player_green_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_3.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_3.inHomeStrip == false && player_green_3.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_3.isOut = false;
                    player_green_3.location = 1;
                    player_green_3.position = 0;
                    player_green_3.x = green_home_3.dx;
                    player_green_3.y = green_home_3.dy;
                    player_green_3.playerRect = Rect.fromLTWH(player_green_3.x, player_green_3.y, raintileSize, raintileSize);
                    player_green_3.total_moved = 1;
                    player_green_3.counter = 0;
                    player_green_3.rolled = 0;
                    player_green_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_green_4.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_green_4.inHomeStrip == false && player_green_4.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_green_4.isOut = false;
                    player_green_4.location = 1;
                    player_green_4.position = 0;
                    player_green_4.x = green_home_4.dx;
                    player_green_4.y = green_home_4.dy;
                    player_green_4.playerRect = Rect.fromLTWH(player_green_4.x, player_green_4.y, raintileSize, raintileSize);
                    player_green_4.total_moved = 1;
                    player_green_4.counter = 0;
                    player_green_4.rolled = 0;
                    player_green_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_yellow_1.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_yellow_1.inHomeStrip == false && player_yellow_1.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_1.isOut = false;
                    player_yellow_1.location = 14;
                    player_yellow_1.position = 0;
                    player_yellow_1.x = yellow_home_1.dx;
                    player_yellow_1.y = yellow_home_1.dy;
                    player_yellow_1.playerRect = Rect.fromLTWH(player_yellow_1.x, player_yellow_1.y, raintileSize, raintileSize);
                    player_yellow_1.total_moved = 1;
                    player_yellow_1.counter = 0;
                    player_yellow_1.rolled = 0;
                    player_yellow_1.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_yellow_2.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_yellow_2.inHomeStrip == false && player_yellow_2.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_2.isOut = false;
                    player_yellow_2.location = 14;
                    player_yellow_2.position = 0;
                    player_yellow_2.x = yellow_home_1.dx;
                    player_yellow_2.y = yellow_home_1.dy;
                    player_yellow_2.playerRect = Rect.fromLTWH(player_yellow_2.x, player_yellow_2.y, raintileSize, raintileSize);
                    player_yellow_2.total_moved = 1;
                    player_yellow_2.counter = 0;
                    player_yellow_2.rolled = 0;
                    player_yellow_2.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_yellow_3.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_yellow_3.inHomeStrip == false && player_yellow_3.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_3.isOut = false;
                    player_yellow_3.location = 14;
                    player_yellow_3.position = 0;
                    player_yellow_3.x = yellow_home_3.dx;
                    player_yellow_3.y = yellow_home_3.dy;
                    player_yellow_3.playerRect = Rect.fromLTWH(player_yellow_3.x, player_yellow_3.y, raintileSize, raintileSize);
                    player_yellow_3.total_moved = 1;
                    player_yellow_3.counter = 0;
                    player_yellow_3.rolled = 0;
                    player_yellow_3.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (player_blue_4.location == player_yellow_4.location &&
                    player_blue_4.inHomeStrip == false &&
                    player_yellow_4.inHomeStrip == false && player_yellow_4.isOut == true) {
                  if(player_blue_4.save.contains(player_blue_4.location)){
                    print("Save");
                    blocked.add(player_blue_4.location);
                    player_blue_4.blocked.add(player_blue_4.location);
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = false;
                      dice_blue.isTurn = true;
                      blue_six_counter += 1;
                    } else {
                      dice_green.isTurn = false;
                      dice_yellow.isTurn = false;
                      dice_red.isTurn = true;
                      dice_blue.isTurn = false;
                      blue_six_counter = 0;
                    }
                  }else {
                    print("Not");
                    player_yellow_4.isOut = false;
                    player_yellow_4.location = 14;
                    player_yellow_4.position = 0;
                    player_yellow_4.x = yellow_home_4.dx;
                    player_yellow_4.y = yellow_home_4.dy;
                    player_yellow_4.playerRect = Rect.fromLTWH(player_yellow_4.x, player_yellow_4.y, raintileSize, raintileSize);
                    player_yellow_4.total_moved = 1;
                    player_yellow_4.counter = 0;
                    player_yellow_4.rolled = 0;
                    player_yellow_4.dicerolled = false;
                    dice_blue.isTurn = true;
                    if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                      blue_six_counter += 1;
                    } else {
                      blue_six_counter = 0;
                    }
                  }
                }
                else if (dice_blue.rolled == 6 && blue_six_counter <= 1) {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = false;
                  dice_blue.isTurn = true;
                  blue_six_counter += 1;
                } else {
                  dice_green.isTurn = false;
                  dice_yellow.isTurn = false;
                  dice_red.isTurn = true;
                  dice_blue.isTurn = false;
                  blue_six_counter = 0;
                }
              }
            }
          }
        }
      }
    }

//    fly.isRight = false;
//    fly.isLeft = false;

    if(activeView == View.home){
      if (startButton.rect.contains(d.globalPosition)) {
        homeView.onTapDown();
      }
      else if (ads.rect.contains(d.globalPosition)) {
        launchURL();
      }
    }
    if (activeView == View.lost) {
      if (startButton.rect.contains(d.globalPosition) && goOn == true) {
        lostView.onTapDown();
      }
      if (homeButton.rect.contains(d.globalPosition) && goOn == true) {
        lostView.onTapDownHome();
      }
    }

    if (activeView == View.shopping) shoppingView.forEach((
        ShoppingView shoppingview) {
      counter = (gemsstorage.getInt('gems'));

      if ((shoppingview.rect.contains(d.globalPosition) && buy == true &&
          shoppingview.price <= counter)) {
        counter = (gemsstorage.getInt('gems') ?? 0) - shoppingview.price;
        gemsstorage.setInt('gems', counter);
        gemsdisplay.updateGems();
        shoppingview.bought = true;
        if (shoppingview.power == 'magnet') {
          powers.add('magnet-blast.png');
          magnet_bought = true;
          magnet = Magnet(this, shoppingview.x, shoppingview.y);
          magnetTrue.setBool('magnet', true);
        }
        if (shoppingview.power == 'shield') {
          powers.add('slashed-shield.png');
          shield_bought = true;
          shield = Shield(this, shoppingview.x, shoppingview.y);
          shieldTrue.setBool('shield', true);
        }
        if (shoppingview.power == 'heart') {
          heart_pixel_add = true;
          fly.extra_live = true;
          heart_bought = true;
          heart = Heart(this, shoppingview.x, shoppingview.y);
          heartTrue.setBool('heart', true);
        }
        if (shoppingview.power == 'swords') {
          powers.add('all-for-one.png');
          swords_bought = true;
          swords = Swords(this, shoppingview.x, shoppingview.y);
          swordsTrue.setBool('swords', true);
        }
        if (shoppingview.power == 'rupee') {
          increasegems = 2;
          rupee_bought = true;
          rupee = Rupee(this, shoppingview.x, shoppingview.y);
          gemsTrue.setBool('rupee', true);
        }
        if (shoppingview.power == 'arrows') {
          powers.add('charged-arrow.png');
          arrows_bought = true;
          arrows = Arrows(this, shoppingview.x, shoppingview.y);
          arrowsTrue.setBool('arrows', true);
        }
        if (shoppingview.power == 'armor') {
          powers.add('chest-armor.png');
          armor_bought = true;
          armor = Armor(this, shoppingview.x, shoppingview.y);
          armorTrue.setBool('armor', true);
        }
        if (shoppingview.power == 'eagle') {
          powers.add('eagle-emblem.png');
          eagle_bought = true;
          eagle = Eagle(this, shoppingview.x, shoppingview.y);
          eagleTrue.setBool('eagle', true);
        }
        if (shoppingview.power == 'beanstalk') {
          beanstalk_bought = true;
          beanstalk = Beanstalk(this, shoppingview.x, shoppingview.y);
          vineTrue.setBool('beanstalk', true);
        }
        shoppingView.removeWhere((ShoppingView shoppingview) =>
        (shoppingview.bought == true));
      }
    });

    /**    if (activeView == View.playing) {
        power_up.forEach((Powers power) {
        if (power.rect.contains(d.globalPosition)) {
        power.active = true;
        poweractive = true;
        }
        });
        }
     */  }

  onTapCancel() {
//    fly.isLeft = false;
//    fly.isRight = false;
  }

  launchURL() async {
    const url = 'http://astk.cf';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
