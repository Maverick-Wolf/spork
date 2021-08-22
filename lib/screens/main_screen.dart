import 'package:flutter/material.dart';
import 'package:spork/helpers/about.dart';
import 'package:spork/helpers/contact.dart';
import 'package:spork/helpers/education.dart';
import 'package:spork/helpers/help.dart';
import 'package:spork/helpers/projects.dart';
import 'package:spork/helpers/skills.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _list = [];
  outputText(String value) {
    Widget text;
    if (value.toLowerCase().trim() == "help") {
      text = Help();
    } else if (value.toLowerCase().trim() == "about") {
      text = About();
    } else if (value.toLowerCase().trim() == "contact") {
      text = Contact();
    } else if (value.toLowerCase().trim() == "education") {
      text = Education();
    } else if (value.toLowerCase().trim() == "projects") {
      text = Projects();
    } else if (value.toLowerCase().trim() == "skills") {
      text = Skills();
    } else {
      text = Padding(
        padding: const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
        child: Text(
          "Command not found: $value.",
          style: TextStyle(color: Colors.red[600]),
        ),
      );
    }
    return text;
  }

  addTextField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: TextField(
        key: UniqueKey(),
        style: TextStyle(color: Colors.white, fontSize: 14.0),
        cursorColor: Colors.white70,
        cursorHeight: 18.0,
        autofocus: true,
        showCursor: true,
        onSubmitted: (value) {
          Widget text = outputText(value);
          setState(() {
            if (value.toLowerCase().trim() == "clear") {
              _list.clear();
            } else {
              _list.add(text);
            }
            _list.add(addTextField());
          });
        },
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            prefixIcon: Padding(
                padding: EdgeInsets.all(7.5),
                child: Text(
                  'code@never:~# ',
                  style: TextStyle(color: Color(0xFF00CD00)),
                ))),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _list.add(addTextField());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _list,
        ),
      ),
    );
  }
}
