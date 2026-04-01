import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:huda_signin_page/headerdesig.dart';
import 'infocard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return HeaderDesign(
      title: "Sign up",
      leading: FaIcon(FontAwesomeIcons.arrowDownWideShort),
      children: [
        InfoCard(label: "Username", controller: TextEditingController()),
        SizedBox(height: 10),
        InfoCard(label: "Email", controller: TextEditingController()),
        SizedBox(height: 10),
        InfoCard(label: "Phone number", controller: TextEditingController()),
        SizedBox(height: 10),
        PasswordCard(
          label: "Confirm password",
          controller: TextEditingController(),
        ),
        SizedBox(height: 10),
        PasswordCard(label: "Password", controller: TextEditingController()),
        SizedBox(height: 15),
        Row(
          children: [
            Checkbox(
              fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.white;
                }
                return Colors.white;
              }),

              side: WidgetStateBorderSide.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return const BorderSide(color: Color(0xFFFFD55A), width: 2);
                }
                return const BorderSide(color: Colors.grey, width: 2);
              }),

              checkColor: Color(0xFFFFD55A),
              value: _isAccepted,
              onChanged: (bool? value) {
                setState(() {
                  _isAccepted = value ?? false;
                });
              },
            ),

            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "I have read and agree to ",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                  ),

                  TextSpan(
                    text: "the Terms and Conditions.",
                    style: TextStyle(color: Color(0xFFFFD55A), fontSize: 18),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 45),

        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Center(
              child: Text(
                "Sign Up",
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
      ],
    );
  }
}
