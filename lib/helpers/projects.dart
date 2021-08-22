import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
      child: RichText(
        text: TextSpan(
            text:
                "I am mostly working on something, making new magical potions by belnding all sort of new things.\nWhy don't you check out all of the public GitHub repositories I own? Here have the ",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: "link",
                style: TextStyle(
                    color: Color(0xFFFFA500),
                    decoration: TextDecoration.underline),
              ),
              TextSpan(
                text: "\n\nI own and run a Discord Bot called ",
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: "Emote Handler",
                style: TextStyle(
                    color: Color(0xFFFFA500),
                    decoration: TextDecoration.underline),
              ),
              TextSpan(
                text:
                    " and it is currenlty over 1600 server and has a userbase of over 750k users.",
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: "\nThe Bot is made using python and uses the ",
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: "Discord Api",
                style: TextStyle(
                    color: Color(0xFFFFA500),
                    decoration: TextDecoration.underline),
              ),
              TextSpan(
                text: ", we also use MariaDB as the database for the bot.",
                style: TextStyle(color: Colors.white),
              ),
            ]),
      ),
    );
  }
}
