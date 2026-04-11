import 'package:flutter/material.dart';
import 'package:huda_signin_page/first_pages.dart';

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
      description: "Online classes taught by the world's best.\nGordon Ramsay,Stephen Curry,and more",
      imagePath: "assets/images/girl1.jpg",
      currentIndex: 0,
    );
  }
}