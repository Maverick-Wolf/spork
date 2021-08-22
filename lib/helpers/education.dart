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
            "So you truly want to know, where i learned all my magical spells from... hmmmm alright i will tell you, i only learned from the best so here you go",
            style: TextStyle(color: Colors.white),
          ),
          RichText(
            text: TextSpan(
                text: "\nThe Air Force School - ",
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                    text: "Website",
                    style: TextStyle(
                        color: Color(0xFFFFA500),
                        decoration: TextDecoration.underline),
                  ),
                  TextSpan(
                    text: "\nBirla Intitue of Technology and Science, Goa - ",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                    text: "Website",
                    style: TextStyle(
                        color: Color(0xFFFFA500),
                        decoration: TextDecoration.underline),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
