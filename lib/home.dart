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
            alignment: WrapAlignment.center,
            spacing: 50,
            runSpacing: 50,
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
                width: 30,
              ),
              Wrap(
                runAlignment: WrapAlignment.center,
                  spacing: 70,
                  runSpacing: 70,
                  alignment: WrapAlignment.center,
                  children: [
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
                    HomeIcons(
                      path: '/alerthome',
                      imagePath: 'assets/Emergency_home.png',
                      iconName: 'Emergency Alert',
                    ),
                  ]),
            ],
          ),
        ),
      debugShowCheckedModeBanner: false,

    );
  }
}
