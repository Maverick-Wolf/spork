import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi There! I'm Rachit Chaudhary,\nA Flutter developer, Python/C++ programmer, a Discord bot developer and an open source contributor based in India.",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          Text(
            "I have been developing Android/IOS Apps for just over 6 months now and all of these apps have majorly been in Flutter.\nI have also been playing around with FLutter Web for few months now and have made some websites using that too.",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          RichText(
            text: TextSpan(
              text:
                  "Right now I'm in my Second year of undergraduate degree at",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Cour", fontSize: 16.0),
              children: [
                TextSpan(
                    text: " Birla Institue of Technology and Science, Pilani",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Cour",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: " doing my",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Cour",
                        fontSize: 16.0)),
                TextSpan(
                    text: "  Engineering in Electronics.",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Cour",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
