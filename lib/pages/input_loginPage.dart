

import 'package:blaze_stream/buttons/primaryButtons.dart';
import 'package:get/get.dart';
import 'package:blaze_stream/pages/background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InputLoginPage extends StatefulWidget {
  const InputLoginPage( {Key? key, String title = ''}) : super(key: key);

  @override
  InputLoginPageState createState() => InputLoginPageState();
}

class InputLoginPageState extends State<InputLoginPage> {
  bool showAnimated = false;
  bool showPass = false;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
   
   @override
   void initState() {
    Future.delayed( const Duration(microseconds: 1), () {
      setState(() {
        showAnimated = true;
      });

    });
    super.initState();
   }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
     final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back( ),
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
            title: Text(
        "LOGIN",
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w500,   
        ),
      ),
        backgroundColor: Colors.transparent,
      ),
    
         
      body: Stack(
        children: [
          const Back_Ground(),

          SizedBox(
           
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const  SizedBox(
                  
                
                ),
                Text('Hi, Hope you are having a nice day?',
                style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                     ), ),
                        Text('Welcome Back! please enter your details ',
                style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                     ), ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: _email,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Gmail',
                      hintText: 'Enter valid mail id as abc@gmail.com',
                    ),
                  ),
                ),
                Padding(
                  padding:const  EdgeInsets.all(10),
                  child: TextField(
                    controller: _password,
                    obscureText: !showPass,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration:  InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your secure password',
    suffixIcon: IconButton(
      onPressed: () {
        setState( () {
          showPass = !showPass; // Toggle the password visibility
        });
      },
      icon: Icon(
        showPass ?Icons.visibility : Icons.visibility_off,
        color: Colors.grey,
               
      ),),
                    ),
                  ),
                ),
               TextButton(onPressed: (){}
                 , child:Text("Forgot Pasword?",
                 style: GoogleFonts.nunito(
                  color: Colors.grey,
                 textStyle: const TextStyle(
                 decoration: 
                   TextDecoration.underline
                    ),
            ),)),

              const SizedBox( height: 20,
            ),
            TextButton(
              onPressed: () {
                
              },
              child: Text('LOGIN',
                 style: GoogleFonts.josefinSans(
                 color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  backgroundColor: const Color.fromARGB(255, 61, 61, 62),
                  
              ),))
              ],
              
            ),
            
          ),
       AnimatedPositioned(
        curve: Curves.easeIn,
        duration:const Duration(milliseconds: 80),
        bottom:  showAnimated? -screenWidth*08 : screenHeight *.3,
        right: showAnimated? -screenWidth*.15 : screenHeight * .18, 
        child: AnimatedOpacity(
          opacity: showAnimated ? 1 : 0, 
          duration: const Duration(milliseconds: 400),
          child: Container(
            padding: const EdgeInsets.all(55),
            width: screenWidth * .65,
            height:  screenHeight *.65,
            decoration:  const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors:[Colors.blueGrey,
                                                Color.fromARGB(255, 113, 109, 109)]  )
            ),

            child:  Stack(
              alignment:  Alignment.center,
              children: [
                Container(
                  width: 40 ,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.5)
                  ),
                ),
                Container(
                  width: 40 ,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.5)
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  ],
                )
              ],
            ),
          ),),)
        
        ],
        
      ),
    );
  }
}
