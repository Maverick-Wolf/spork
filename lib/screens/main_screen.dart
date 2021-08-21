import 'package:flutter/material.dart';
import 'package:spork/helpers/about.dart';
import 'package:spork/helpers/contact.dart';
import 'package:spork/helpers/help.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _list = [];
  outputText(String value) {
    Widget text;
    if (value.toLowerCase() == "help") {
      text = Help();
    } else if (value.toLowerCase() == "about") {
      text = About();
    } else if (value.toLowerCase() == "contact") {
      text = Contact();
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
            if (value.toLowerCase() == "clear") {
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
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Color(0xFF68768A), width: 1.4)),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.width * 0.45,
          child: Column(
            children: [
              Container(
                color: Color(0xFF68768A),
                height: 32.0,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/cmd.png'),
                      height: 27.0,
                      width: 27.0,
                    ),
                    Text(
                      "C:\\WINDOWS\\system32\\portfolio.exe",
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Icon(
                      Icons.horizontal_rule_sharp,
                      color: Colors.white,
                      size: 22.0,
                    ),
                    SizedBox(
                      width: 27.0,
                    ),
                    Icon(
                      Icons.crop_square_sharp,
                      color: Colors.white,
                      size: 22.1,
                    ),
                    SizedBox(
                      width: 27.0,
                    ),
                    Icon(
                      Icons.clear,
                      color: Colors.white,
                      size: 24.0,
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _list,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
