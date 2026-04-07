import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:huda_signin_page/headerdesig.dart';
import 'package:pinput/pinput.dart';

class Passwordvarification extends StatefulWidget {
  final String phoneNumber;

  const Passwordvarification({super.key, required this.phoneNumber});

  @override
  State<Passwordvarification> createState() => _PasswordvarificationState();
}

class _PasswordvarificationState extends State<Passwordvarification> {
  final pinController = TextEditingController();
  var code = "";
  final focusNode = FocusNode();
  bool isLoading = false;

  bool isResendDisabled = true;

  @override
  void dispose() {
    // TODO: implement dispose

    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HeaderDesign(
      title: "Enter 6 digit \n Varification Code",

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "The varification code was sent to the phone \n number ${widget.phoneNumber}. Please enter the\n code:",
              style: TextStyle(fontSize: 20),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 30,
                ),
                child: Pinput(
                  keyboardType: TextInputType.number,
                  autofocus: false,
                  length: 6,
                  separatorBuilder: (index) => SizedBox(width: 15),
                  controller: pinController,

                  onChanged: (value) {
                    setState(() {
                      code = value;
                    });
                  },
                  defaultPinTheme: PinTheme(
                    width: 30,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.blueAccent, width: 2),
                      ),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey)),
                    ),
                  ),
                  onCompleted: (pin) async {
                    showLoadingDialoge(context);
                    await Future.delayed(Duration(seconds: 2));
                    if (mounted) {
                      Navigator.pop(context);
                      showSuccessDialog(context);
                    }
                  },
                ),
              ),
            ),

            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                print("Resending code...");
                // Add your resend logic here
              },
              child: const Text("Resend the verification code"),
            ),
          ],
        ),
      ],
    );
  }
}

void showLoadingDialoge(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => PopScope(
      canPop: false,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 25),
            FaIcon(
              FontAwesomeIcons.spinner,
              color: Colors.amberAccent,
              size: 80,
            ),
            // CircularProgressIndicator(color: Colors.amberAccent),
            SizedBox(height: 35),
            Text("Wait a few seconds....", style: TextStyle(fontSize: 22)),
            SizedBox(height: 25),
          ],
        ),
      ),
    ),
  );
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: (context),
    builder: (Context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 25),

            FaIcon(
              FontAwesomeIcons.checkCircle,
              size: 80,
              color: Colors.amberAccent,
            ),
            // CircularProgressIndicator(color: Colors.amberAccent),
            SizedBox(height: 25),
            Text("Your account created succesfully!"),
            SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
                child: Text("Sign In", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      );
    },
  );
}
