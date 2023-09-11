import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 class PrimaryButton extends StatelessWidget {
    PrimaryButton({super.key,
   required this.title,
   required this.width,
   required this.height,
   });
   String title;
   double width;
   double height;
 
   @override
   Widget build(BuildContext context) {
     return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all( Radius.circular(10)),
        gradient: LinearGradient(
          colors:[ Colors.grey,
          ]           
        )
      ),
      child: Center(child: Text(
        title,
        style: GoogleFonts.phudu(
          color:  Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),),
     );
   }
 }