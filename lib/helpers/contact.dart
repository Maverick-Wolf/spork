import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      child: RichText(
        text: TextSpan(
            text: "email",
            style: TextStyle(
                color: Color(0xFF4E5CFF),
                fontSize: 16.0,
                fontFamily: "Cour",
                fontWeight: FontWeight.w600),
            children: [
              TextSpan(
                  text: "\n   - rachau76@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Cour",
                      fontWeight: FontWeight.normal)),
              TextSpan(
                text: "\n\ndiscord",
                style: TextStyle(
                    color: Color(0xFF4E5CFF),
                    fontSize: 16.0,
                    fontFamily: "Cour",
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                  text: "\n   - Maverick Wolf#6565",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Cour",
                      fontWeight: FontWeight.normal)),
              TextSpan(
                text: "\n\nsmoke signals",
                style: TextStyle(
                    color: Color(0xFF4E5CFF),
                    fontSize: 16.0,
                    fontFamily: "Cour",
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                  text: "\n   - general New Delhi region",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Cour",
                      fontWeight: FontWeight.normal)),
            ]),
      ),
    );
  }
}
