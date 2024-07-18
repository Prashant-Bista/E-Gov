import 'package:egov/components.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';
class EmergencyHome extends StatelessWidget {
  const EmergencyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text("Emergency Alert!",style: GoogleFonts.roboto(color: Colors.black,fontSize: 32.0),)),
          actions: [
            IconButton(onPressed:() {
              router.go('/');
            }, icon: Icon(Icons.arrow_back_ios))
          ],

          ),
      body: Center(
        child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 50,
        runSpacing: 50,
        children: [
          SizedBox(height: 100,),
        HomeIcons(
          path:"/",
          iconName: "Harrasment",
          imagePath: "assets/harrasment.png",
        ),
          HomeIcons(
            path:"/",
            iconName: "Fire Brigade",
            imagePath: "assets/firebrigade.jpg",
          ),
          HomeIcons(
            path:"/",
            iconName: "Ambulance",
            imagePath: "assets/ambulance.png",
          ),
          HomeIcons(
            path:"/",
            iconName: "Sewer",
            imagePath: "assets/sewer.png",
          ),
          HomeIcons(
            path:"/",
            iconName: "Garbage",
            imagePath: "assets/garbage.png",
          ),
          HomeIcons(
            path:"/",
            iconName: "Hearse",
            imagePath: "assets/hearse.png",
          ),

        ],
          ),
      )
      );

  }
}
