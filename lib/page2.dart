import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:appone/page3.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            // image background
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //Container color
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(20, 8, 11, 81)
                                      .withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: Offset(0, 30),
                                )
                              ]),
                          width: 300,
                          height: 300,

                          // container text and button
                          child: Column(children: [
                            SizedBox(
                              height: 100,
                              // width: 100,
                              child: Text(
                                "Stop Wishing And \nStart Doing ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inika(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: .8,
                                      fontSize: 36),
                                ),
                              ),
                            ),
                            SizedBox(
                              //  width: 5,
                              height: 10,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Radio(
                                      value: 1,
                                      groupValue: 1,
                                      onChanged: (value) {
                                        // Set(if );
                                      }),
                                  Radio(
                                      value: 2,
                                      groupValue: 2,
                                      onChanged: (value) {}),
                                  Radio(
                                      value: 3,
                                      groupValue: 3,
                                      onChanged: (value) {})
                                ]),

// Button Next
                            SizedBox(
                              width: 20,
                              height: 50,
                            ),
                            Material(
                              elevation: 1,
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50),
                              child: MaterialButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, 'page3'),
                                minWidth: 220,
                                height: 50,
                                child: Text(
                                  "Next",
                                  style: GoogleFonts.imFellFrenchCanon(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: .5,
                                        fontSize: 26),
                                  ),
                                ),
                              ),
                            ),
                          ])),
                    ],
                  ),
                )));
  }
}
