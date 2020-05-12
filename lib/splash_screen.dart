

  
              
             
                          
                         import 'dart:async';

import 'package:flutter/material.dart';
import 'second_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SecondScreen()
      )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff739D84),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/logo_white_version.png", width: 100 , height:100),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            
           
           
          ],
        ),
      ),
    );
  }
}