import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/MyContainer.dart';
import '../Widgets/MyVisitedContainer.dart';
import 'RecordScreen.dart';

class HomeSummary extends StatefulWidget {
  const HomeSummary({super.key});

  @override
  State<HomeSummary> createState() => _HomeSummaryState();
}

class _HomeSummaryState extends State<HomeSummary> {
  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(
        Icons.home,
        color: Color(0xff205072),
        size: 30,
      ),
      Icon(
        Icons.search,
        color: Color(0xffCDE0C9),
        size: 30,
      ),
      IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RecordScreen()));
          },
          icon: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          )),
      Icon(
        Icons.heart_broken,
        size: 30,
        color: Color(0xffCDE0C9),
      ),
      Icon(
        Icons.people,
        size: 30,
        color: Color(0xffCDE0C9),
      )
    ];
    int index = 2;

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 75,
        buttonBackgroundColor: Color(0xff7BE495),
        backgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xffE0ECDE),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Icons- menu.png"),
                    Image.asset("assets/Avatar.png")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Good Evening,",
                    style: GoogleFonts.montserrat(
                        color: Color(0xff205072),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                Text(
                  "Alexis",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff205072),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your target for today is to keep positive mindset and smile to everyone you meet.",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff68B2A0),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 91,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xff205072),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "MORE DETAILS",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xff329D9C),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "VIEW YOUR PROFILE",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("What are you doing today?",
                style: GoogleFonts.montserrat(
                    color: Color(0xff205072),
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 20),
            MyContainer(
              title: "Doctor",
              subtitle: "Brain Checkout",
              description: "Have an appointment today",
              image: "assets/Icons- brain.png",
              contText: "View",
              contColor: Color(0xffF75010),
            ),
            Divider(
              color: Color(0xff707070),
              thickness: 1,
            ),
            SizedBox(height: 10),
            MyContainer(
              title: "Pharmacy",
              subtitle: "Purchase Prescription",
              description: "Don't forget to bring the list with you",
              image: "assets/Icons- lab.png",
              contText: "Set",
              contColor: Color(0xff47CACC),
            ),
            Divider(
              color: Color(0xff707070),
              thickness: 1,
            ),
            SizedBox(height: 20),
            Text("Visit a Specialists",
                style: GoogleFonts.montserrat(
                    color: Color(0xff205072),
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyVisitedContainer(image: "assets/Image.png"),
                  MyVisitedContainer(image: "assets/Image2.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
