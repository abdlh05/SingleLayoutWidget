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

//                            <--DECORATION BOX-->
      // body: Container(
      //   margin: EdgeInsets.all(30.0),
      //   padding: EdgeInsets.only(right: 8.0, top: 8.0),
      //   width: double.infinity,
      //   height: 200,
      //   decoration: BoxDecoration(
      //     color: Colors.blue,
      //     border: Border.all(),
      //   ),
      //   child: Align(
      //     alignment: Alignment.topRight,
      //     child: Text('Hello, Flutter!', style: TextStyle(fontSize: 30, color: Colors.white)),
      //   ),
      // ),

//                           <--BUTTON-->
      // body: Center(
      //   child: IntrinsicWidth(//Lebar mengikuti child
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: <Widget>[
      //         RaisedButton(
      //           onPressed: () {},
      //           child: Text('Tombol Pendek'),
      //         ),
      //         RaisedButton(
      //           onPressed: () {},
      //           child: Text('Tombol Lebih Panjang'),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

//                   <--Row untuk orientation Horizontal-->
      // body: Row(
      //   children: <Widget>[
      //     Expanded(
      //         child: Icon(
      //       Icons.home,
      //       size: 70,
      //     )),
      //     Expanded(
      //         child: Icon(
      //       Icons.home,
      //       size: 70,
      //     )),
      //     Expanded(
      //         child: Icon(
      //       Icons.home,
      //       size: 70,
      //     )),
      //     Expanded(
      //         child: Icon(
      //       Icons.home,
      //       size: 70,
      //     )),
      //   ],
      // ),

      //column untuk orientation Vertical
      // body: Column(
      //   children: <Widget>[
      //     Expanded(
      //         child: Icon(
      //       Icons.home,
      //       size: 70,
      //     )),
      //     Expanded(
      //         child: Icon(
      //       Icons.home,
      //       size: 70,
      //     )),
      //     Expanded(
      //         child: Icon(
      //       Icons.home,
      //       size: 70,
      //     )),
      //     Expanded(
      //         child: Icon(
      //       Icons.home,
      //       size: 70,
      //     )),
      //   ],
      // ),

      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(color: Colors.redAccent, height: 500.0, child: Center(child: Text('1', style: TextStyle(fontSize: 30.0)))),
          Container(color: Colors.yellowAccent, height: 500.0, child: Center(child: Text('2', style: TextStyle(fontSize: 30.0)))),
          Container(color: Colors.greenAccent, height: 500.0, child: Center(child: Text('3', style: TextStyle(fontSize: 30.0)))),
          Container(color: Colors.blueAccent, height: 500.0, child: Center(child: Text('4', style: TextStyle(fontSize: 30.0)))),
        ],
      ),
    );
  }
}
