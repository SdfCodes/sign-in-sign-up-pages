import 'package:flutter/material.dart';
import 'package:huda_signin_page/passwordvarification.dart';
import 'package:huda_signin_page/signin_page.dart';
import 'package:huda_signin_page/signup_page.dart';
import 'package:huda_signin_page/welcome_page.dart';
import 'package:huda_signin_page/SecondImage.dart';

import 'firstImage.dart';
import 'first_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        initialRoute: '/',
        routes: {
          '/': (context)=>Home(),
          '/firstDot': (context) => OnboardingScreen(
            title: "Learn from the best",
            description: "Online classes taught by the world's best.",
            imagePath: "assets/images/girl1.jpg",
            currentIndex: 0,
          ),

          '/secondDot': (context) => OnboardingScreen(
            title: "Download and watch anytime",
            description: "Download up to 10 digestible lessons that you \ncan watch offline and at any time.",
            imagePath: "assets/images/girl.jpg",
            currentIndex: 1,
          ),

          '/thirdDot': (context) => OnboardingScreen(
            title: "Explore a range of topics",
            description: "Serfect homemade pasta, or write a novel... \nAll with access to 100+ classes.",
            imagePath: "assets/images/bird.jpg",
            currentIndex: 2,
          ),
          '/SignIn':(context)=>SignInPage(),
          '/SignUp':(context)=>SignUpPage(),
          '/VarifyPassword':(context)=>Passwordvarification( phoneNumber: '',)

        },
      title: 'Login App',
      theme: ThemeData(primarySwatch: Colors.amber, useMaterial3: true),

    );
  }
}
