import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomRight,
            //  startAngle: 90,
            //center: FractionalOffset.topCenter,
            //  stops: [1, 0, 1, 0],
            //  tileMode: TileMode.clamp,
            colors: [
              Color(0xff181818),
              Color(0xff5e5f64),
              Color(0xff7d7b7a),
              Color(0xffffffff),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/icon.png",
                    width: 350,
                  ),
                ),
                Text(
                  'EMPOWER',
                  style: GoogleFonts.tradeWinds(
                    textStyle: TextStyle(
                        color: Colors.white, letterSpacing: .5, fontSize: 26),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
