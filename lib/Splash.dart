import 'dart:async';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'package:flutter/material.dart';
import 'package:huslak/Appcolor.dart';
import 'package:huslak/Select.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 3),
            (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  Select()
              )

          );
        }

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: 
        DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
        image: AssetImage("assets/splash.png",),
              fit: BoxFit.cover
          ),),
       // Column(
       //   crossAxisAlignment: CrossAxisAlignment.center,
       //   mainAxisAlignment: MainAxisAlignment.center,
       //   children: [
       //      Center(child: Image.asset('assets/mesa.png'))
       //   ],
       // ),
          child: Center(child: Image.asset('assets/mesa.png')),
        ),

    );
  }
}
