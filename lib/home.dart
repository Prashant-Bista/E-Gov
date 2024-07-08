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
              "Nepal Government E-services",
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
            Wrap(children: [
              MaterialButton(
                onPressed: () {
                  router.go('/register');
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/register.png',
                      width: 150,
                      height: 150,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Register",
                      style: GoogleFonts.kaiseiTokumin(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
