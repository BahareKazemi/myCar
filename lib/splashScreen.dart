import 'dart:async';

import 'package:mycar/authenticationScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

 stratTimer(){
   Timer(Duration(seconds: 5), (){
     Route newRoute=MaterialPageRoute(builder:
     (context)=>AuthenticationScreen());
     
     Navigator.pushReplacement(context, newRoute);
   });
 }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    stratTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.black,
            ],
                begin: Alignment.topLeft
                , end: Alignment.bottomRight)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('images/redcar.png'),
              SizedBox(height: 10,),
              Text("flutter plus", style: TextStyle(fontSize: 60 ,fontFamily:"Lobster",color: Colors.white,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
