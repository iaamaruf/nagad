import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nagaad/Common/Utilities/image.dart';
import 'package:nagaad/Screens/Get%20start%20Screen/get_start.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushNamedAndRemoveUntil(GetStartScreen.routeName,(route) => false);
    }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width:double.infinity,
          color: Colors.deepOrange,
          child: Center(
            child: Container(
              height: 200,
              width: 160,
              child: Image.asset(AppImage.getPath("splashLogo"),
                fit:BoxFit.fill,color: Colors.white,),
            ),

          ),
        )
    );


  }
}