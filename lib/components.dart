import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForRegister extends StatefulWidget {
  final heading;
  final hint;
  final controller;
  const ForRegister({super.key, this.heading, this.hint, this.controller});

  @override
  State<ForRegister> createState() => _ForRegisterState();
}

class _ForRegisterState extends State<ForRegister> {
  TextEditingController _emailController = TextEditingController();
  late String errorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.heading,
          style: GoogleFonts.roboto(fontSize: 20, color: Colors.black),
        ),
        SizedBox(width: 50),
        SizedBox(
          width: 500,
          child: TextFormField(
            controller: _emailController,
            maxLength: 20,
            decoration: InputDecoration(
                label: Text(widget.heading),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.red,
                )),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: widget.hint,
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
