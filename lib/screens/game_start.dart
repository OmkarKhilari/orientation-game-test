import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'game_screen.dart';

class GameStartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Housie'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 928.0,
                decoration: BoxDecoration(
                  color: Color(0xFF382D21),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/guide_heading.svg',
                      height: 64,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Draw Numbers: The caller draws one number at a time from the container and announces it to the players.\n\n'
                      'Mark Numbers: Players look for the called number on their cards and mark it if it is present.\n\n'
                      'Complete Patterns: The game can be played with various patterns, such as a full house (all numbers on the card), a single line (any horizontal line), or other patterns as specified at the start of the game.\n\n'
                      'Call House: When a player completes the required pattern, they must call out "Housie" or "Bingo!" The game pauses while the caller checks the player\'s card.',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 1.2,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF60430D),
                  minimumSize: Size(757.0, 146),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameScreen()));
                },
                child: Text(
                  'Start Game',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 64,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
