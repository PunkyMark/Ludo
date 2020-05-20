import 'package:flutter/material.dart';
import 'package:flame/util.dart';// Can keep portrait, tells O.S to run full screen and no notification bar or buttons
import 'package:flutter/services.dart';// Gives access to device orientation
import 'package:fluttertest1/gameloop.dart';
import 'package:flame/flame.dart';
import 'package:flutter/gestures.dart';
import 'package:fluttertest1/view.dart';
import 'package:fluttertest1/home-view.dart';
import 'package:fluttertest1/lost-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIOverlays([]);

  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  SharedPreferences storage = await SharedPreferences.getInstance();
  SharedPreferences gemsstorage = await SharedPreferences.getInstance();
  SharedPreferences magnetTrue = await SharedPreferences.getInstance();
  SharedPreferences gemsTrue = await SharedPreferences.getInstance();
  SharedPreferences heartTrue = await SharedPreferences.getInstance();
  SharedPreferences shieldTrue = await SharedPreferences.getInstance();
  SharedPreferences arrowsTrue = await SharedPreferences.getInstance();
  SharedPreferences swordsTrue = await SharedPreferences.getInstance();
  SharedPreferences armorTrue = await SharedPreferences.getInstance();
  SharedPreferences vineTrue = await SharedPreferences.getInstance();
  SharedPreferences eagleTrue = await SharedPreferences.getInstance();
  SharedPreferences tutorialDone = await SharedPreferences.getInstance();

  Flame.images.loadAll(<String>[
    'green.png',
    'red.png',
    'yellow.png',
    'blue.png',
    'ludostarboard.png',
    'circle.png',
    'gem_9.png',
    'play.png',
    'shop.png',
    'templateshop.png',
    'magnet-blast.png',
    'slashed-shield.png',
    'hearts.png',
    'all-for-one.png',
    'rupee.png',
    'charged-arrow.png',
    'chest-armor.png',
    'eagle-emblem.png',
    'beanstalk.png',
    'back.png',
    'home.png',
    'tuts.png',
    'gem.png',
    'credits.png',
    'banner2.jpg',
    'ludostarlogo.png',
    '6.png',
    '5.png',
    '4.png',
    '3.png',
    '2.png',
    '1.png',
    'd13.png',
    'd12.png',
    'd11.png',
    'd10.png',
    'd9.png',
    'd8.png',
    'd7.png',
    'd6.png',
    'd5.png',
    'd4.png',
    'd3.png',
    'd2.png',
    'd1.png',
    'c13.png',
    'c9.png',
    'c7.png',
    'c4.png',
    'c3.png',
    'c1.png',
    'arrow.png',
    'arrow90.png',
  ]);

  runApp(MyApp(storage, gemsstorage, magnetTrue, gemsTrue, heartTrue, shieldTrue, arrowsTrue, swordsTrue, armorTrue, vineTrue, eagleTrue, tutorialDone));
}

class MyApp extends StatelessWidget {

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
  LangawGame game;

  MyApp(this.storage, this.gemsstorage, this.magnetTrue, this.gemsTrue, this.heartTrue, this.shieldTrue, this.arrowsTrue, this.swordsTrue, this.armorTrue, this.vineTrue, this.eagleTrue, this.tutorialDone){
    init();
  }

  init() {
    game = LangawGame(storage, gemsstorage, magnetTrue, gemsTrue, heartTrue, shieldTrue, arrowsTrue, swordsTrue, armorTrue, vineTrue, eagleTrue, tutorialDone);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child:
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapCancel: game.onTapCancel,
          onTapDown: game.onTapDown,
          onTapUp: game.onTapUp,
          child: game.widget,
        ),
      ),
    );
  }
}