import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;
  final IconData data;
  final String hintText;
  final bool isObscure;

  CustomTextField(this.controller, this.data, this.hintText, this.isObscure){}




  @override
  Widget build(BuildContext context) {
    double _screenWidth= MediaQuery.of(context).size.width;
    double _screenHeight= MediaQuery.of(context).size.height;
    
    
    return Container(
      width: _screenWidth*0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)
        ,),

      ),
      padding:EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        obscureText: isObscure,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(data,color: Colors.cyan,),
          focusColor: Theme.of(context).primaryColor,
          hintText: hintText,
        ),
      ),
    );
  }
}
