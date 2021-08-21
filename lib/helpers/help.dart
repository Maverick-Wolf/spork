import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
      child: RichText(
        text: TextSpan(
            text: "about",
            style: TextStyle(
              color: Color(0xFF4E5CFF),
            ),
            children: [
              TextSpan(
                  text: "\n   - Stop stalking me",
                  style: TextStyle(color: Colors.white)),
              TextSpan(
                text: "\n\nskills",
                style: TextStyle(
                  color: Color(0xFF4E5CFF),
                ),
              ),
              TextSpan(
                  text:
                      "\n   - Get to know about all the magical powers i posses",
                  style: TextStyle(color: Colors.white)),
              TextSpan(
                text: "\n\nprojects",
                style: TextStyle(
                  color: Color(0xFF4E5CFF),
                ),
              ),
              TextSpan(
                  text:
                      "\n   - See all the potions i have made using my magical powers",
                  style: TextStyle(color: Colors.white)),
              TextSpan(
                text: "\n\neducation",
                style: TextStyle(
                  color: Color(0xFF4E5CFF),
                ),
              ),
              TextSpan(
                  text:
                      "\n   - Ahh so now you wanna become a greate wizard like me?",
                  style: TextStyle(color: Colors.white)),
              TextSpan(
                text: "\n\ncontact",
                style: TextStyle(
                  color: Color(0xFF4E5CFF),
                ),
              ),
              TextSpan(
                  text: "\n   - Let the spam begin",
                  style: TextStyle(color: Colors.white)),
            ]),
      ),
    );
  }
}
