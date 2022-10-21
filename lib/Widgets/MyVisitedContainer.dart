import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_star_rating/simple_star_rating.dart';

class MyVisitedContainer extends StatelessWidget {
  final String image;
  const MyVisitedContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      width: 350,
      child: Stack(
        children: [
          Positioned(
            right: 20,
            child: Container(
              height: 73,
              width: 274,
              padding: EdgeInsets.only(left: 35),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(21),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("Physician",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff205072),
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                  Text("Svyatoslav Taushev",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff205072),
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                  SimpleStarRating(
                    allowHalfRating: true,
                    filledIcon: Icon(Icons.star, color: Color(0xffCDB3D4)),
                    nonFilledIcon:
                        Icon(Icons.star_border, color: Color(0xffCDB3D4)),
                    starCount: 5,
                    rating: 3.5,
                    size: 20,
                    onRated: (rate) {},
                    spacing: 5,
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
              width: 55,
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
                image,
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
              top: 20,
              right: 25,
              child: Container(
                height: 24,
                width: 51,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffCDB3D4),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "BOOK",
                    style: GoogleFonts.montserrat(
                        color: Color(0xffCDB3D4),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
