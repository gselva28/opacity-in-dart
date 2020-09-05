import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

bool visible;

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    visible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name here"),
      ),
      body: Container(
        padding: new EdgeInsets.all(32.0),
        child: Column(
          children: [
            Opacity(
              opacity: visible ? 1.0 : 0.2,
              child: Text("Now you see me now you don\'t"),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  visible = !visible;
                });
              },
              child: Text("Toogle"),
            ),
          ],
        ),
      ),
    );
  }
}
