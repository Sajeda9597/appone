import 'dart:html';
import 'dart:js_util';
import 'dart:ui';

import 'package:appone/page4.dart';
import 'package:appone/tab.dart';
import 'package:flutter/material.dart';
import 'package:appone/page1.dart';
import 'package:appone/page2.dart';
import 'package:appone/page3.dart';

//import 'package:appone/HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      'page1': (context) => screen1(),
      'page2': (context) => Screen2(),
      'page3': (context) => Screen3(),
      'page4': (context) => Screen4(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController pageController = PageController(initialPage: 0);
  List a = [screen1(), Screen2(), Screen3()];
  late final TabController controller;
  int index = 0;
  @override
  void initState() {
    super.initState();
    // controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        pageSnapping: true,
        children: [
          Container(color: Colors.primaries[0], child: screen1()),
          Container(
            color: Colors.primaries[1],
            child: Screen2(),
          ),
          Container(
            color: Colors.primaries[2],
            child: Center(
              child: Screen3(),
            ),
          ),

          /*screen1(), Screen2(), Screen3(), Screen4()*/
        ],
      ),
    );
  }
}
