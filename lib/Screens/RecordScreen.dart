import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 525,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/Background.png",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.1,
            left: size.width * 0.3,
            child: Text(
              "Congratulations!",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: size.height * 0.13,
            left: size.width * 0.35,
            child: Text(
              "You are clean",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: size.height * 0.2,
            left: size.width * 0.1,
            child: Container(
              height: 73,
              width: 350,
              child: Stack(
                children: [
                  Positioned(
                    right: 20,
                    child: Container(
                      height: 73,
                      width: 274,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(21),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text("Alexis Balencesco",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff329D9C),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Your results are here",
                            style: GoogleFonts.montserrat(
                                color: Color(0xff205072),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 10,
                    child: Container(
                      height: 55,
                      width: 73,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                          child: Image.asset(
                        "assets/Icons- Main App Icon.png",
                        height: 20,
                      )),
                    ),
                  ),
                  Positioned(
                      top: 5,
                      right: 25,
                      child: Image.asset("assets/Avatar.png"))
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.3,
            left: size.width * 0.13,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 400,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/barchart.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "You Paid",
                    style: GoogleFonts.montserrat(
                      color: Color(0xff205072),
                      fontSize: 13,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$987",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff205072),
                              fontSize: 21,
                              fontWeight: FontWeight.bold)),
                      Container(
                        width: 91,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xff205072),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "SEND TO WALLET",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text("Service Charge",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff205072),
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.75,
            left: size.width * 0.25,
            child: Text("Your X-ray turnout out to be very",
                style: GoogleFonts.montserrat(
                    color: Color(0xff329D9C),
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
          ),
          Positioned(
            top: size.height * 0.77,
            left: size.width * 0.3,
            child: Text("successfull. You are clean",
                style: GoogleFonts.montserrat(
                    color: Color(0xff329D9C),
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
          ),
          Positioned(
            top: size.height * 0.82,
            left: size.width * 0.15,
            child: Container(
              height: 55,
              width: 312,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff7BE495),
              ),
              child: Center(
                child: Text(
                  "Tell your Family".toUpperCase(),
                  style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
              top: size.height * 0.9,
              left: size.width * 0.44,
              child: Text(
                "Not Now",
                style: GoogleFonts.montserrat(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffff205072)),
              ))
        ],
      ),
    ));
  }
}
