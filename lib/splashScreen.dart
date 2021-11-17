// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:session_4/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/splah.png",
        fit: BoxFit.fill,),
    );
  }


  void changePage(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return LoginScreen();
      }));
    });
  }

}
