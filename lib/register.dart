import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 20,
            shadowColor: Colors.grey,
            backgroundColor: Colors.greenAccent,
            title: Center(child: Text("Register")),
          ),
          backgroundColor: Colors.white,
          body: Wrap(
            runSpacing: 10,
            spacing: 20,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "First Name",
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(width: 50),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      maxLength: 20,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          hintText: "Enter your Full name",
                          hintStyle: TextStyle(fontSize: 12),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.green,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(5))))),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "First Name",
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      maxLength: 20,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.green, style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all((Radius.circular(5)))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        hintText: "Enter your Full name",
                        hintStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
