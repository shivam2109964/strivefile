import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strive/scr/Constants/Size/ScreenSize.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: screenHeight * 0.5,
            width: screenWidth * 1,
            decoration: const BoxDecoration(
              color: Color(0xFF060A16),
            ),
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(
                    85,
                  ),
                ),
              ),
              child: Center(
                child: SizedBox(
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.7,
                  child: Image.asset('assets/images/icon.png'),
                ),
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.5,
            width: screenWidth * 1,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth * 1,
              decoration: const BoxDecoration(
                color: Color(
                  0xFF060A16,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    85,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "S T R I V E",
                    style:
                        GoogleFonts.aclonica(fontSize: 35, color: Colors.white),
                  ),
                  Text(
                    "Join Strive today\nand commence your journey\ntowards financial growth.",
                    style: GoogleFonts.actor(fontSize: 19, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      minimumSize: MaterialStateProperty.all(
                        Size(screenWidth * 0.5, screenHeight * 0.08),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(
                          0xFF002A69,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Let's Start",
                      style: GoogleFonts.actor(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
