import 'package:flutter/material.dart';
import 'package:huda_signin_page/First_Images/first_pages.dart';

class SecondImage extends StatefulWidget {
  const SecondImage({super.key});

  @override
  State<SecondImage> createState() => _FirstImageState();
}

class _FirstImageState extends State<SecondImage> {
  @override
  Widget build(BuildContext context) {
    return OnboardingScreen(
      title: "Download and watch anytime",
      description: "Download up to 10 digestible lessons that you \n can watch offline and at any time ",
      imagePath: "assets/images/girl.jpg",
      imagePaths: null,
      currentIndex: 1,
    );
  }
}