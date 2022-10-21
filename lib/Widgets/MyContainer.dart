import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String description;
  final Color contColor;
  final String contText;
  const MyContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.contColor,
    required this.contText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(image),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff205072),
                              fontSize: 10,
                              fontWeight: FontWeight.w500)),
                      Text(
                        subtitle,
                        style: GoogleFonts.montserrat(
                            color: Color(0xff205072),
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(description,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff205072),
                              fontSize: 10,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
              Container(
                  width: 47,
                  height: 24,
                  decoration: BoxDecoration(
                    color: contColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      contText.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
