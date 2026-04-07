import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:huda_signin_page/signup_page.dart';

import 'package:huda_signin_page/headerdesig.dart';
import 'infocard.dart';
import 'package:icons_plus/icons_plus.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return HeaderDesign(
      title: "Sign in ",
      children: [
        InfoCard(
          label: "Username",
          // icon: Icons.person_2,
          controller: _passController,
        ),
        SizedBox(height: 10),
        PasswordCard(label: "Password", controller: _userController),
        SizedBox(height: 30),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => isHover = true),
            onExit: (_) => setState(() => isHover = false),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Sign Up ,\n",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      decoration: isHover
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                  ),
                  WidgetSpan(child: SizedBox(height: 30)),
                  TextSpan(
                    text: "Forget your password?",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF4267B2),
              borderRadius: BorderRadius.circular(5),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Brand(Brands.facebook_circled),
                SizedBox(width: 8),
                Text(
                  "Log in with Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Brand(Brands.google),
                SizedBox(width: 8),
                Text(
                  "Log in with Google  ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
