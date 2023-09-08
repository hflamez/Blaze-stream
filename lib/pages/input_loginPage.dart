import 'package:blaze_stream/pages/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class input_Loginpage  extends StatelessWidget {
  const input_Loginpage ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body:  Column( 
      children:[
        Back_Ground(),
      Padding(
       padding: EdgeInsets.all(10),
       child: TextField(
       decoration: InputDecoration(
       border: OutlineInputBorder(),
       fillColor: Colors.white,
       labelText: 'User Name',
       hintText: 'Enter valid mail id as abc@gmail.com'
     ),
   ),
     ),
        Padding(
       padding: EdgeInsets.all(10),
       child: TextField(
       decoration: InputDecoration(
       border: OutlineInputBorder(),
       fillColor: Colors.white,
       labelText: 'PassWord',
       hintText: 'Enter your password'
     ),
   ),
     ),
    ] ) );
  }
}