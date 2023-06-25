




import 'package:flutter/material.dart';
import 'widgets/customTextField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();



  @override
  Widget build(BuildContext context) {
    double _screenWidth=MediaQuery.of(context).size.width,
           _screenHeight=MediaQuery.of(context).size.height;

    TextEditingController controller;
    IconData data;
    String hintText;
    bool isObscure;


    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Padding(padding: EdgeInsets.all(15),
              child: Image.asset("images/redcar.png",height: _screenHeight*0.4,width:_screenWidth-10 ,),
            )
            ),Form(key:_formKey,
                child: Column(
                  children: [
                      CustomTextField(
                          controller=_emailController,
                          data=Icons.email,
                          hintText='Email',
                          isObscure=false,
                      ),
                    CustomTextField(
                      controller=_passwordController,
                      data=Icons.lock,
                      hintText='Password',
                      isObscure=true,
                    ),
                  ],
                )
                ),
            SizedBox(height: 10,)
            ,Container(
              height:50 ,
              width: MediaQuery.of(context).size.width*0.8,
            child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
              primary: Colors.red[900],

              // Background color
            ),
              child: Text("Login",style: TextStyle(color: Colors.white),)
              ,),),

            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
