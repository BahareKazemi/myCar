import 'package:mycar/widgets/loadingWidget.dart';
import 'package:flutter/material.dart';

class LoadingAlertDialog extends StatelessWidget {

  final String message;


  LoadingAlertDialog(this.message);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circularProgress(),
        SizedBox(height:10,),
      Text("Authenticating,Please Wait....")
        ],
      ),
    );
  }
}

