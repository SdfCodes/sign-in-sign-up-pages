import 'package:flutter/material.dart';
import 'package:huda_signin_page/First_Images/first_pages.dart';

class FirstImage extends StatefulWidget {
  const FirstImage({super.key});

  @override
  State<FirstImage> createState() => _FirstImageState();
}

class _FirstImageState extends State<FirstImage> {
  @override
  Widget build(BuildContext context) {
    return OnboardingScreen(
      title: "Learn from the best",
      description: "Online classes taught by the world's best \n Gordon Ramsay, Stephen Curry, and more..",
      imagePath: "assets/images/bird.jpg",
      imagePaths : null,
      currentIndex: 0,
    );
  }
}