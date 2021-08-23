import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
                text: "\nTAFS",
                recognizer: _tapGestureRecognizer
                  ..onTap = () async {
                    String _url = "https://www.tafssp.com/";
                    await canLaunch(_url)
                        ? await launch(_url)
                        : throw 'Could not launch $_url';
                  },
                style: TextStyle(
                    color: Color(0xFFFFA500),
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                    fontFamily: "Cour"),
                children: [
                  TextSpan(
                    text: " - The Air Force School, Subroto Park",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Cour",
                        fontSize: 16.0,
                        decoration: TextDecoration.none),
                  ),
                  TextSpan(
                    text: "\nBITS",
                    recognizer: _tapGestureRecognizer
                      ..onTap = () async {
                        String _url = "https://www.bits-pilani.ac.in/goa/";
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
                    text: " - Birla Intitue of Technology and Science, Goa",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: "Cour",
                        decoration: TextDecoration.none),
                  ),
                  TextSpan(
                    text: "\nGoogle",
                    recognizer: _tapGestureRecognizer
                      ..onTap = () async {
                        String _url = "https://www.google.com/";
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
                    text: " - No way gonna forget this bad boy :) ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: "Cour",
                        decoration: TextDecoration.none),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
