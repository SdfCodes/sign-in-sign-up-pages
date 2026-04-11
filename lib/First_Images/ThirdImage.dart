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
      title: "Explore a range of topics",
      description: "Perfect homemade pasta, or write a novel...\n All with access to 100+ classes.",
      imagePaths: [
        "assets/images/girl.jpg",
        "assets/images/girl.jpg",
        "assets/images/girl.jpg",
        "assets/images/girl.jpg",
        "assets/images/girl.jpg",
        "assets/images/girl.jpg",
        "assets/images/girl.jpg",
        "assets/images/girl.jpg",
      ],
      imagePath: null,
      currentIndex: 2,
    );
  }
}