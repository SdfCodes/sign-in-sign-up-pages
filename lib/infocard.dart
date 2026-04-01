import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String label;

  final TextEditingController controller;
  const InfoCard({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border(bottom: BorderSide(color: Colors.white)),
      ),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black26,
        style: TextStyle(color: Colors.blueGrey),
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(color: Colors.blueGrey),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}

class PasswordCard extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  const PasswordCard({
    super.key,
    required this.label,
    required this.controller,
  });

  @override
  State<PasswordCard> createState() => _PasswordCardState();
}

class _PasswordCardState extends State<PasswordCard> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border(bottom: BorderSide(color: Colors.white)),
      ),
      child: TextField(
        controller: widget.controller,
        cursorColor: Colors.black26,

        obscureText: hidePassword,
        obscuringCharacter: "*",
        style: TextStyle(color: Colors.blueGrey),
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: TextStyle(color: Colors.blueGrey),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),

          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
            icon: Icon(
              hidePassword ? Icons.visibility_off_outlined : Icons.visibility,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
