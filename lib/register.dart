import 'dart:io';

import 'package:egov/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              surfaceTintColor: Colors.blue,
              centerTitle: true,
              foregroundColor: Colors.black,
              elevation: 20,
              shadowColor: Colors.grey,
              backgroundColor: Colors.greenAccent,
              title: Text("Register")),
          backgroundColor: Colors.white,
          body: Wrap(
            runSpacing: 10,
            spacing: 20,
            children: [
              SizedBox(
                height: 20,
              ),
              ForRegister(
                heading: "Full Name",
                hint: "Enter Full Name",
              ),
              ForRegister(
                heading: "Address",
                hint: "Enter your Permanent Address",
              ),
              ForRegister(
                heading: "Contact",
                hint: "Enter Contact number",
              ),
              ForRegister(
                heading: " Citizenship",
                hint: "Enter Citizenship number",
              ),
              ForRegister(heading: "Age", hint: "Enter your Age"),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: GoogleFonts.abyssinicaSil(
                      color: Colors.red, fontSize: 20),
                ),
                iconAlignment: IconAlignment.end,
              )
            ],
          )),
    );
  }
}
