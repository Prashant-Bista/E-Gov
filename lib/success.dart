import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class Success extends StatelessWidget {
  const Success({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5*2))
                    ),

                    child: Column(
                      children: [
                        Text(
                          "REGISTRATION",
                          style: GoogleFonts.kalnia(
                            color: Colors.green,
                            fontSize: 45*2,

                          ),
                        ),
                        Text(
                          "'SUCCESS'!",
                          style: GoogleFonts.kalnia(
                            color: Colors.green,
                            fontSize:  22.5*2,
                          ),
                        ),
                      ],
                    )
                  ),
                  SizedBox(
                    height: 30*2,
                  ),

                  Image.asset("assets/reg_succ.png"),
                  SizedBox(
                    height: 30*2,
                  ),
                  SizedBox(width: 20*2,),
                  MaterialButton(onPressed:() {
                    router.go('/');
                  },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10.0*2))
                      ),
                      child: Text("CONTINUE",style: GoogleFonts.notoSans(fontSize: 15*2,color:Colors.white ),),
                    ),
                  )

                ],
              ))),
    );
  }
}
