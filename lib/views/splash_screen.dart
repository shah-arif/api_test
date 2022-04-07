import 'dart:async';

import 'package:api_test/views/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), ()=>Navigator.push(context, CupertinoPageRoute(builder: (context)=>HomeScreen())));
    return Scaffold(
      body: Center(
        child: Text("Splash Screen",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
      )
    );
  }
}
