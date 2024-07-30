import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game_screen.dart';

class GameStartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Housie',
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/heading_background.svg',
                    height: 64,
                    color: Color(0xFF60430D), 
                  ),
                  Positioned(
                    child: Text(
                      'Guide For Housie',
                      style: GoogleFonts.raleway(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Color(0xFFE8E7C8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Draw Numbers: The caller draws one number at a time from the container and announces it to the players.\n\n'
                  'Mark Numbers: Players look for the called number on their cards and mark it if it is present.\n\n'
                  'Complete Patterns: The game can be played with various patterns, such as a full house (all numbers on the card), a single line (any horizontal line), or other patterns as specified at the start of the game.\n\n'
                  'Call House: When a player completes the required pattern, they must call out "Housie" or "Bingo!" The game pauses while the caller checks the player\'s card.',
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF60430D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameScreen()));
                },
                child: Text(
                  'Start Game',
                  style: GoogleFonts.inter(
                    fontSize: 24,
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
