import 'package:mycar/globalVar.dart';
import 'package:mycar/homeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'DialogBox/errorDialog.dart';
import 'widgets/customTextField.dart' ;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override

  State<Register> createState() => _RegisterState();
}


class _RegisterState extends State<Register> {


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passWordConfirmController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();


  // final FirebaseAuth _auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery
        .of(context)
        .size
        .width,
        _screenHeight = MediaQuery
            .of(context)
            .size
            .height;


    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.bottomCenter,

              child: Padding(
                padding: EdgeInsets.all(15),
                child: Image.asset(
                  "images/redcar.png", height: 270,
                ),
              ),
            ),
            SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    _nameController,
                    Icons.person,
                    "Name",
                    false,
                  ),
                  CustomTextField(
                    _phoneController,
                    Icons.phone,
                    "Phone",
                    false,
                  ),
                  CustomTextField(

                    _emailController,
                    Icons.email,
                    "Email",
                    false,
                  ),
                  CustomTextField(

                    _passwordController,
                    Icons.lock,
                    "PassWord",
                    true,
                  ),
                  CustomTextField(

                    _passWordConfirmController,
                    Icons.lock,
                    "Confirm PassWord",
                    true,
                  ),
                  CustomTextField(

                    _imageController,
                    Icons.camera,
                    "Image Url",
                    false,
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,

            ),
            Container(
              height: 50,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.8,
              child: ElevatedButton(onPressed: () {
                // _register();
              },
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[900]), child:
                Text("SignUp", style: TextStyle(color: Colors.white),),),
            ),
            SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }

}
  /*void saveUserData(){
    Map<String,dynamic> userData={
      'username':_nameController.text.trim(),
      'uId':userId,
      'userNumber':_phoneController.text.trim(),
      'imagePro':_imageController.text.trim(),
      'time':DateTime.now(),
    };
    FirebaseFirestore.instance.collection('users').doc(userId).set(userData);

  }




  void _register()async {
    User curentUser;
    await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim()
    ).then((auth) {
      curentUser= auth.user!;
    userId = curentUser.uid!;
    userEmail=curentUser.email!;
    getUsername=_nameController.text.trim();
    saveUserData();
    }).catchError((error){
      Navigator.pop(context);
      showDialog(context: context, builder: (context){
        return ErrorDialog(
           error.message.toString(),
        );
      });
    });
    if (User !=null){
      Route newRoute=MaterialPageRoute(builder: (context)=>HomeScreen());
          Navigator.pushReplacement(context, newRoute);
    }
  }



}*/
