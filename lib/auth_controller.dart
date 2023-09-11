import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  String emailUser ='';

  void setEmailtolocal(String email) async{
    final pref = await SharedPreferences.getInstance();
    pref.setString('email', email);
  }
  void removeEmailFromLocal()async{
    final pref = await SharedPreferences.getInstance();
    String? email = pref.getString('email');
    if (email != null){
      emailUser = email;
      update();
    }
  }

  String getUserId(){
    final User? user = auth.currentUser;
    final uid = user!.uid;
    return uid;
  }
   Stream<User?> get streamAuthStatus => auth.authStateChanges();

   void login( String email, String password) async {
    try{
    UserCredential userC = await auth.signInWithEmailAndPassword(email: email, password: password);
    setEmailtolocal(email);
    Get.to(Root());
    } else {
      Get.defaultDialog(
        title: 'LOGIN FAILED',
        middleText: 'Please Verify your Gmail',
        backgroundColor: Colors.white,
        buttonColor: Color.fromARGB(255, 82, 81, 81),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)           );    }
   } 
   on FirebaseAuthExecption catch (e){

 }
}