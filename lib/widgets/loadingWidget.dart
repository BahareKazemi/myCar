import 'package:flutter/material.dart';
circularProgress(){
  return Container(
  alignment: Alignment.center,
    padding: EdgeInsets.only(top:12),
    child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.lightGreenAccent),),

  );


}

LinearProgress(){
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(top:12),
    child: LinearProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.lightGreenAccent),),

  );
}

