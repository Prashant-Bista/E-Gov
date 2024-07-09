import 'package:egov/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForRegister extends StatelessWidget {
  final heading;
  final hint;
  final controller;
  ForRegister({super.key, this.heading, this.hint, this.controller});

  TextEditingController _emailController = TextEditingController();

  late String errorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          heading,
          style: GoogleFonts.roboto(fontSize: 20, color: Colors.black),
        ),
        SizedBox(width: 50),
        SizedBox(
          width: 500,
          child: TextFormField(
            controller: _emailController,
            maxLength: 20,
            decoration: InputDecoration(
                label: Text(heading),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.red,
                )),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: hint,
                hintStyle: TextStyle(fontSize: 12),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.green, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all((Radius.circular(5))))),
            validator: (text) {
              if (text.toString().length == 0) {
                return "Please Fill up this space";
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}

class HomeIcons extends StatelessWidget {
  final path;
  final imagePath;
  final iconName;

  const HomeIcons({super.key, this.path, this.imagePath, this.iconName});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        router.go(path);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imagePath,
            width: 150,
            height: 150,
          ),
          Text(
            textAlign: TextAlign.start,
            iconName,
            style: GoogleFonts.kaiseiTokumin(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
