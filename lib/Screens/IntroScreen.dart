import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'IntroScreen2.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/Icons- Main App Icon.png",
                    height: 34,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "This is Health UX Kit,",
                    style: GoogleFonts.montserrat(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff205072)),
                  ),
                  Text(
                    "Welcome!",
                    style: GoogleFonts.montserrat(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff205072)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "A health vertical UI kit made with",
                    style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff68B2A0)),
                  ),
                  Text(
                    "love for Adobe XD",
                    style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff68B2A0)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset("assets/Doctor.png"),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset("assets/Elements- Pagination Dots.png"),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const IntroScreen2()));
                    },
                    child: Container(
                      height: 55,
                      width: 312,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff7BE495),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff68B2A0)),
                      ),
                      Text(
                        " Sign In",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff205072)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
