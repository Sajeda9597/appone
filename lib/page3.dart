import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
                image: AssetImage("assets/images/background2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                      child: Column(children: [
                        Text(
                          "Rember,no one \nStart at the top ",
                          // textAlign: TextAlign.right,
                          style: GoogleFonts.inika(
                            textStyle: TextStyle(
                                color: Colors.white,
                                letterSpacing: .8,
                                fontSize: 36),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 90,
                        ),
                        Material(
                          elevation: 1,
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                          child: MaterialButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, 'page4'),
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
