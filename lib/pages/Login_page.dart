import 'package:flutter/material.dart';
import 'package:blaze_stream/routes.dart';
import 'package:blaze_stream/pages/background.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
     final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body:  Stack(
        children: [
        const  Back_Ground(),
         SizedBox(
          
         height: screenHeight,
         width: screenWidth,
         
          child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
             Container(
              width: 400,
              height: 200,
              decoration:const BoxDecoration(
                image: DecorationImage(image: NetworkImage("assets/images/blazeLogo.png")),
              ),
             ),
             Text( "LIMITING DISTANCE",
             style: GoogleFonts.phudu(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold
              )
              ),

              TextButton(onPressed: (){
               
              },
               child: Text('SIGN UP',
                 style: GoogleFonts.phudu(
                 color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.blue,
              ),)),
              const SizedBox(
                height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("I already have an account ?",
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ) ,),
                    TextButton(onPressed: (){
                       Navigator.pushNamed(context, loginRoute);
                    },
                     child: Text("LOGIN",
                     style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                     ),))
                  ],
                ),
               const SizedBox(
                 height: 70, 
                ),
                 Column(
                children: [
                   Text("Sign in with :",
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      
                    ) ,),
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: GradientBoxBorder(
                          gradient:  LinearGradient(
                            colors:[
                               Color.fromARGB(255, 92, 92, 92),
                               Color.fromARGB(26, 167, 160, 160),
                            ] )
                      ),
                      gradient: LinearGradient(colors:[
                         Color.fromARGB(255, 92, 92, 92),
                               Color.fromARGB(26, 167, 160, 160),
                      ])
                    ),
                    child:   Image.asset("assets/images/google logo.avif"),
                ),
               
                     Container(
                      padding: const EdgeInsets.all(12),
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors:[
                              Colors.white
                            ] )
                      ),
                      gradient: LinearGradient(colors:[
                        Colors.white 
                      ])
                    ),
                    child:   Image.asset("assets/images/instagram logo.avif"),
                ),
                   Container(
                      padding: const EdgeInsets.all(12),
                      width: 50,
                      height: 50,
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors:[
                             Color.fromARGB(255, 92, 92, 92),
                              Color.fromARGB(26, 167, 160, 160),
                            ] )
                      ),
                      gradient: LinearGradient(colors:[
                               Color.fromARGB(255, 92, 92, 92),
                               Color.fromARGB(26, 167, 160, 160),
                      ])
                    ),
                    child:   Image.asset("assets/images/facebook logo.avif"),
                
                  )  ],)

                
        ]) 


       ) ],

        ),
);

      
  } 
} 