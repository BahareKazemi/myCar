import 'package:mycar/authenticationScreen.dart';
import 'package:flutter/material.dart';
class ErrorDialog extends StatelessWidget {
final String message;

ErrorDialog(this.message);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(message),
      actions: [
        ElevatedButton(onPressed: (){
          Route newRoute=MaterialPageRoute(builder: (context)=>AuthenticationScreen());
          Navigator.pushReplacement(context, newRoute);

        }, child: Center(
          child: Text("Ok"),
        ))
      ],
    );
  }
}
