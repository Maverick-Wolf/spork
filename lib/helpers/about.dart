import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi There! I'm Rachit Chaudhary,\nA Flutter developer, Python/C++ programmer, a Discord bot developer and an open source contributor based in India.",
            style: TextStyle(color: Colors.white, letterSpacing: 1.1),
          ),
          Text(
            "I have been developing Android/IOS Apps for just over 6 months now and all of these apps have majorly been in Flutter. This portfolio website is my first time playing around with flutter web.",
            style: TextStyle(color: Colors.white70, letterSpacing: 1.1),
          ),
          Text(
            "I am also the Creator and Co-Founder of a Discord bot called Emote Handler which currently is in over 1500 servers and has a userbase of over 700k+ users.",
            style: TextStyle(color: Colors.white, letterSpacing: 1.1),
          ),
          RichText(
            text: TextSpan(
              text:
                  "Right now I'm in my Second year of undergraduate degree at",
              style: TextStyle(color: Colors.white70, letterSpacing: 1.1),
              children: [
                TextSpan(
                    text: " Birla Institue of Technology and Science, Pilani",
                    style: TextStyle(color: Colors.white, letterSpacing: 1.1)),
                TextSpan(
                    text: " doing my",
                    style:
                        TextStyle(color: Colors.white70, letterSpacing: 1.1)),
                TextSpan(
                    text: "  Engineering in Electronics.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.1)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
