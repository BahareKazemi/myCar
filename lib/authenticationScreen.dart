import 'package:mycar/login.dart';
import 'package:mycar/register.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration:BoxDecoration(
                gradient: LinearGradient(colors:
                [  Colors.white,
                  Colors.white,],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                )
              ),
            ),
            title: Text("My Car",style: TextStyle(fontSize: 45,
                color: Colors.red[800],fontFamily:"Lobster" ),
            ),
            centerTitle: true,
            bottom: TabBar(indicatorWeight: 3,labelColor: Colors.red[800],unselectedLabelColor: Colors.grey,indicatorColor: Colors.red[800],
              tabs: [
              Tab(icon: Icon(Icons.lock,color: Colors.grey,)
                ,text: "Login",) ,
                Tab(icon: Icon(Icons.person,color: Colors.grey,)
                ,text: "Register",)
            ],),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.grey,
                  Colors.black,

              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)

            ),
            child: TabBarView(children: [
              Login(),
              Register()
            ],),
          ),
        )
    );

  }
}
