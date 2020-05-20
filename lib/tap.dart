import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Tap extends StatefulWidget {
  @override
  _TapState createState() => new _TapState();
}

class _TapState extends State<Tap> {
  @override
  Widget build(BuildContext context) {
    return new FlareActor("assets/Tap.flr", alignment:Alignment.centerLeft, fit:BoxFit.contain, animation:"Tap");
  }
}