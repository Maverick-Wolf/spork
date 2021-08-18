import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _list = [];

  @override
  void initState() {
    super.initState();
    addTextField() {
      bool enabled = true;
      return Padding(
        padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
        child: TextField(
          enabled: enabled,
          style: TextStyle(color: Colors.white, fontSize: 14.0),
          cursorColor: Colors.white,
          autofocus: true,
          onSubmitted: (value) {
            print(value);
            setState(() {
              _list.add(addTextField());
            });
          },
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              // prefixText: "code@never:~# ",
              // prefixStyle: TextStyle(
              //     color: Color(0xFF008C23), fontWeight: FontWeight.w500)
              prefixIcon: Padding(
                  padding: EdgeInsets.all(7.5),
                  child: Text(
                    'code@never:~# ',
                    style: TextStyle(color: Color(0xFF008C23)),
                  ))),
        ),
      );
    }

    _list.add(addTextField());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
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
