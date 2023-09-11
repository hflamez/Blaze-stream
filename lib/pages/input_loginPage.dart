

import 'package:blaze_stream/buttons/primaryButtons.dart';
import 'package:blaze_stream/pages/background.dart';
import 'package:blaze_stream/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InputLoginPage extends StatefulWidget {
  const InputLoginPage({Key? key, String title = ''}) : super(key: key);

  @override
  InputLoginPageState createState() => InputLoginPageState();
}

class InputLoginPageState extends State<InputLoginPage> {
  bool showAnimated = false;
  bool showPass = false;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
          onPressed: () {},
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
            GestureDetector(
              onTap: () {
                
              },
              child: PrimaryButton(
                title:  "Login",
                width: screenWidth * .8,
                height: 50,
                
              ),
            )
              ],
              
            ),
            
          ),
       
        
        ],
        
      ),
    );
  }
}
