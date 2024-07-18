import 'package:egov/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          elevation: 35,
          shadowColor: Colors.grey,
          title: Center(
            child: Text(
              "Smart Nagarpalika",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 32,
              ),
            ),
          ),
        ),
        body: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: 200,
                  width: 200,
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Wrap(spacing: 50, children: [
              HomeIcons(
                path: '/birth',
                imagePath: 'assets/baby.png',
                iconName: 'Birth Certificate Registration',
              ),
              HomeIcons(
                path: '/death',
                imagePath: 'assets/death.png',
                iconName: 'death Certificate Registration',
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
