import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      child: RichText(
        text: TextSpan(
            text:
                "Wow, I thought the only people who would visit this site would be bots and spammers, guess I was wrong. Just type any of the commands below to get some more info.",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontFamily: "Cour",
                fontWeight: FontWeight.normal),
            children: [
              TextSpan(
                text: "\n\nabout",
                style: TextStyle(
                    color: Color(0xFF4E5CFF),
                    fontSize: 16.0,
                    fontFamily: "Cour",
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                  text: "\n   - Stop stalking me",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Cour",
                      fontWeight: FontWeight.normal)),
              TextSpan(
                text: "\n\nskills",
                style: TextStyle(
                    color: Color(0xFF4E5CFF),
                    fontSize: 16.0,
                    fontFamily: "Cour",
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                  text:
                      "\n   - Get to know about all the magical powers i posses",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Cour",
                      fontWeight: FontWeight.normal)),
              TextSpan(
                text: "\n\nprojects",
                style: TextStyle(
                    color: Color(0xFF4E5CFF),
                    fontSize: 16.0,
                    fontFamily: "Cour",
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                  text:
                      "\n   - See all the potions i have made using my magical powers",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Cour",
                      fontWeight: FontWeight.normal)),
              TextSpan(
                text: "\n\neducation",
                style: TextStyle(
                    color: Color(0xFF4E5CFF),
                    fontSize: 16.0,
                    fontFamily: "Cour",
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                  text:
                      "\n   - Ahh so now you wanna become a greate wizard like me?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Cour",
                      fontWeight: FontWeight.normal)),
              // TextSpan(
              //   text: "\n\nall",
              //   style: TextStyle(
              //     color: Color(0xFF4E5CFF),
              //   ),
              // ),
              // TextSpan(
              //     text: "\n   - Tell me everything",
              //     style: TextStyle(color: Colors.white)),
              TextSpan(
                text: "\n\ncontact",
                style: TextStyle(
                    color: Color(0xFF4E5CFF),
                    fontSize: 16.0,
                    fontFamily: "Cour",
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                  text: "\n   - Let the spam begin",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Cour",
                      fontWeight: FontWeight.normal)),
              TextSpan(
                text: "\n\nclear",
                style: TextStyle(
                    color: Color(0xFF4E5CFF),
                    fontSize: 16.0,
                    fontFamily: "Cour",
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                  text: "\n   - Clears all the output on the terminal",
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
