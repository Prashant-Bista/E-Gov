import 'dart:io';

import 'package:egov/components.dart';
import 'package:egov/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Birth extends StatelessWidget {
  const Birth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
              actionsIconTheme: IconThemeData(
                applyTextScaling: true,
                size: 40,
              ),
              actions: [
                IconButton(
                    alignment: Alignment.topRight,
                    onPressed: () {
                      router.go('/');
                    },
                    icon: Icon(Icons.keyboard_return))
              ],
              surfaceTintColor: Colors.blue,
              centerTitle: true,
              foregroundColor: Colors.black,
              elevation: 20,
              shadowColor: Colors.grey,
              backgroundColor: Colors.greenAccent,
              title: Text("Birth Certificate Registration")),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

            Text(
              "Child's Information",
              style: GoogleFonts.kaiseiTokumin(fontSize: 16),
            ),
            ForRegister(
              heading: "Full Name",
              hint: "Enter Full Name",
            ),
            ForRegister(
              heading: "Place of birth",
              hint: "Enter the child's place of birth",
            ),
            ForRegister(
              heading: "DOB(YYYY/MM/DD)",
              hint: "Enter child's Date of Birth",
            ),
            Text(
              "Parent's Information",
              style: GoogleFonts.kaiseiTokumin(fontSize: 16,),
            ),
            ForRegister(
              heading: "Father's Name",
              hint: "Enter the father's name",
            ),
            ForRegister(
              heading: "Mother's Name",
              hint: "Enter the mother's name",
            ),
            ForRegister(
              heading: "Father's DOB(YYYY/MM/DD)",
              hint: "Enter the father's Date of Birth",
            ),
            ForRegister(
              heading: "Mother's DOB(YYYY/MM/DD)",
              hint: "Enter the Mother's Date of Birth",
            ),
            ForRegister(
              heading: "Father's Name",
              hint: "Enter the father's name",
            ),

            ForRegister(
              heading: "Father's Occupation",
              hint: "Enter the Father's Occupation",
            ),

            SizedBox(
              width: 350,
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                router.go('/success');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: RadialGradient(
                      colors: [Colors.lightBlueAccent,Colors.blueAccent],
                      radius: 2
                  ),
                ),
                width: 200,
                child: Center(
                  child: Text(
                    "Submit",
                    style:
                    GoogleFonts.abyssinicaSil(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
            ),
          ])),
      );
  }
}
