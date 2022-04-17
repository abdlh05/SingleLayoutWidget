import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
        ),
        child: Align(
          alignment: Alignment.topRight,
          child: Text('Hello, Flutter!', style: TextStyle(fontSize: 30, color: Colors.white)),
        ),
      ),
    );
  }
}
