import 'dart:async';

import 'package:flutter/material.dart';
import 'package:womenwiin/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Women Wiin',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/MenuRoute': (BuildContext context) => Home(),
        
      }
    );
  }
}
class SplashScreen extends StatefulWidget {
  // SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/MenuRoute');
  }

  @override
  void initState() {
    super.initState();
    // SQLiteDb dbHelper = SQLiteDb();
    // dbHelper.init();

    startTime();
  }


// SplashScreen code  --->


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green[50],
      backgroundColor: Colors.white,
      body: Align(
        child: Container(
          width: 250,
          height: 250,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(('assets/photo.jpeg'),
                       fit: BoxFit.fill),
                ),
              ),
              Container(height: 5),
              Column(
               
                children: [
                  Row(mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text("FITIG",
                          style:TextStyle(fontSize: 19,
                              color: Colors.black87, fontWeight: FontWeight.bold)),
                      Text(" ASSOCIATION",
                          style:TextStyle(fontSize: 19,
                              color: Colors.black87, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Text("WOMEN WIIN",
                      style:
                          TextStyle(color: Colors.green[800])),
                ],
              ),
              Column(
                children: [
                  Container(height: 20),
                ],
              ),
              Container(
                height: 3,
                width: 80,
                child: LinearProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation(Colors.green[900]),
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
