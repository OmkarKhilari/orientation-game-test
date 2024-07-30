import 'package:flutter/material.dart';
import 'screens/game_start.dart';

void main() {
  runApp(OrientationGame());
}

class OrientationGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Housie Game',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: GameStartScreen(),
    );
  }
}
