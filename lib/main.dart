import 'package:flutter/material.dart';
import 'package:health_care/Screens/IntroScreen.dart';
import 'package:health_care/Screens/IntroScreen2.dart';
import 'package:health_care/Screens/RecordScreen.dart';

import 'Screens/HomeSummary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const IntroScreen(),
    );
  }
}
