import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  late TapGestureRecognizer _tapGestureRecognizer;
  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      child: RichText(
        text: TextSpan(
            text:
                "I am mostly working on something, making new magical potions by belnding all sort of new things.\nWhy don't you check out all of the public GitHub repositories I own? Here have the ",
            style: TextStyle(
                color: Colors.white, fontSize: 16.0, fontFamily: "Cour"),
            children: [
              TextSpan(
                text: "link",
                recognizer: _tapGestureRecognizer
                  ..onTap = () async {
                    String _url = "https://github.com/Maverick-Wolf";
                    await canLaunch(_url)
                        ? await launch(_url)
                        : throw 'Could not launch $_url';
                  },
                style: TextStyle(
                    color: Color(0xFFFFA500),
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                    fontFamily: "Cour"),
              ),
              TextSpan(
                text: "\n\nI own and run a Discord Bot called ",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, fontFamily: "Cour"),
              ),
              TextSpan(
                text: "Emote Handler",
                recognizer: _tapGestureRecognizer
                  ..onTap = () async {
                    String _url = "https://top.gg/bot/828861323353915422";
                    await canLaunch(_url)
                        ? await launch(_url)
                        : throw 'Could not launch $_url';
                  },
                style: TextStyle(
                    color: Color(0xFFFFA500),
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                    fontFamily: "Cour"),
              ),
              TextSpan(
                text:
                    " and it is currenlty over 1600 server and has a userbase of over 750k users.",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, fontFamily: "Cour"),
              ),
              TextSpan(
                text: "\nThe Bot is made using python and uses the ",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, fontFamily: "Cour"),
              ),
              TextSpan(
                text: "Discord Api",
                recognizer: _tapGestureRecognizer
                  ..onTap = () async {
                    String _url = "https://discord.com/developers/docs/intro";
                    await canLaunch(_url)
                        ? await launch(_url)
                        : throw 'Could not launch $_url';
                  },
                style: TextStyle(
                    color: Color(0xFFFFA500),
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                    fontFamily: "Cour"),
              ),
              TextSpan(
                text: ", we also use MariaDB as the database for the bot.",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, fontFamily: "Cour"),
              ),
            ]),
      ),
    );
  }
}
