import 'dart:async';


import 'package:flutter/material.dart';

import 'homepage.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context)=> HomePage())),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('splash'),centerTitle:true,
      ),
      body: Center(
    child: Image(image:AssetImage('assets/splash/food.gif'),),
      ),
    );
  }
}
