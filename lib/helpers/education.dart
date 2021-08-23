import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "So you truly want to know, where i learned all my magical spells from...\nhmmmm alright i will tell you, i only learned from the best so here you go",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          RichText(
            text: TextSpan(
                text: "\nThe Air Force School - ",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Cour", fontSize: 16.0),
                children: [
                  TextSpan(
                    text: "Website",
                    style: TextStyle(
                        color: Color(0xFFFFA500),
                        decoration: TextDecoration.underline,
                        fontSize: 16.0,
                        fontFamily: "Cour"),
                  ),
                  TextSpan(
                    text: "\nBirla Intitue of Technology and Science, Goa - ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: "Cour"),
                  ),
                  TextSpan(
                    text: "Website",
                    style: TextStyle(
                        color: Color(0xFFFFA500),
                        decoration: TextDecoration.underline,
                        fontSize: 16.0,
                        fontFamily: "Cour"),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
