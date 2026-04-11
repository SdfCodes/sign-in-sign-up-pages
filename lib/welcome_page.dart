import 'package:flutter/material.dart';
import 'package:huda_signin_page/signin_page.dart';
import 'dart:async';

import 'firstImage.dart';


class Home extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<Home> {
  String text = "eduME";

  @override
  void initState() {
    super.initState();
    startSequence();
  }

  void startSequence() {

    Timer(Duration(seconds: 2), () {
      setState(() {
        text = "Welcome!";
      });
    });

    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>FirstImage(),
      ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child:Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: text == "eduME" ? 'ArialRounded' : null,
            fontWeight: text == "eduME" ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}