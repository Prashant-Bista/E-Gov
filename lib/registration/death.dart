import 'dart:io';

import 'package:egov/components.dart';
import 'package:egov/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Death extends StatelessWidget {
  const Death({super.key});

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
              title: Text("Death Certificate Registration")),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(child: Column(
          children:[
            SizedBox(
              height: 20,
            ),
            Text(
              "Deceased Person's Information",
              style: GoogleFonts.kaiseiTokumin(fontSize: 32),
            ),
            ForRegister(
              heading: "Full Name",
              hint: "Enter Full Name",
            ),
            ForRegister(
              heading: "Place of death",
              hint: "Enter the deceased's place of death",
            ),
            ForRegister(
              heading: "DOD(YYYY/MM/DD)",
              hint: "Enter deceased's Date of death",
            ),
            ForRegister(
              heading: "Place of birth",
              hint: "Enter the deceased's place of birth",
            ),
            ForRegister(
              heading: "DOB(YYYY/MM/DD)",
              hint: "Enter deceased's Date of Birth",
            ),
            ForRegister(
              heading: "Citizenship number",
              hint: "Enter the deceased's Citizenship number",
            ),
            ForRegister(
              heading: "Marital Status(Married/Unmarried)",
              hint: "Enter the parents' marital Status",
            ),
            ForRegister(
              heading: "Deceased's Occupation",
              hint: "Enter the Deceased's Occupation",
            ),
            ForRegister(
              heading: "Cause of Death",
              hint: "Enter the Deceased's Cause of Death",
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
          ]),
      ),
      );
  }
}
