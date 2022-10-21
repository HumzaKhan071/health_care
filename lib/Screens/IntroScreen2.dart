import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginScreen.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
            centerTitle: true,
            title: Image.asset(
              "assets/Icons- Main App Icon.png",
              height: 34,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Turn on Notification",
            style: GoogleFonts.montserrat(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xff205072)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 500,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/iPhone 11 Pro Outline.png"))),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
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
                                offset:
                                    Offset(0, 4), // changes position of shadow
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
                SizedBox(
                  height: 90,
                ),
                Container(
                    height: 70,
                    width: 280,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.1,
                              blurRadius: 0.1,
                              offset: Offset(0, 1))
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                                "assets/Atoms- Selectors- Selected.png"),
                            Text(
                              "Weekly healthy suggestions",
                              style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff205072)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ],
                    )),
                Container(
                    height: 70,
                    width: 280,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.1,
                              blurRadius: 0.1,
                              offset: Offset(0, 1))
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                                "assets/Atoms- Selectors- Selected.png"),
                            Text(
                              "Daily health reminder and reprot",
                              style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff205072)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ],
                    )),
                Container(
                    height: 70,
                    width: 280,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.1,
                              blurRadius: 0.1,
                              offset: Offset(0, 1))
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/Atoms- Selectors- Selected.png"),
                        Text(
                          "Tailor made services just for you",
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff205072)),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 55,
            width: 296,
            decoration: BoxDecoration(
                color: Color(0xff7BE495),
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              child: Text(
                "Turn on",
                style: GoogleFonts.montserrat(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFFFFF)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Skip",
            style: GoogleFonts.montserrat(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xff205072)),
          ),
        ],
      )),
    );
  }
}
