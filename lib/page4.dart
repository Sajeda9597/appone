import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:appone/page3.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/background3.jpg"),
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
                      width: 350,
                      height: 350,

                      // container text and button
                      child: Column(children: [
                        SizedBox(
                            height: 150,
                            // width: 100,
                            child: Column(
                              children: [
                                Text(
                                  "Health mind in a \n healthy body ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inika(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: .8,
                                        fontSize: 36),
                                  ),
                                ),
                                Text(
                                  "Lots of gyms and sports center, close \nto where you live, all in one app ",
                                  // textAlign: TextAlign.center,
                                  style: GoogleFonts.inika(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: .8,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            )),

// Button Next
                        SizedBox(
                          width: 20,
                          height: 40,
                        ),
                        Material(
                          elevation: 1,
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: 200,
                            height: 50,
                            child: Text(
                              "Get Started",
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
