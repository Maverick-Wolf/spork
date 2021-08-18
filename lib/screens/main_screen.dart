import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _list = [];
  String value = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _list = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          color: Colors.white,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Widget _container = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        color: Colors.white,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black87)),
              child: Text("Add new container"),
              onPressed: () {
                setState(() {
                  _list.add(_container);
                });
              },
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black87)),
              child: Text("Clear"),
              onPressed: () {
                setState(() {
                  _list = [];
                  _list.add(_container);
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF68768A), width: 1.4)),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.width * 0.4,
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
                    children: [
                      TextField(
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                        cursorColor: Colors.white,
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            prefixText: "code@never:~# ",
                            prefixStyle: TextStyle(
                                color: Color(0xFF008C23),
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
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
