import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatefulWidget {
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SecondScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Displaying the image
            Image.network(
              'https://scontent.fpnq5-1.fna.fbcdn.net/v/t39.30808-6/293147548_118217720926695_3728183890302029094_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=YsvsyyWvYSwQ7kNvgG8Lfck&_nc_ht=scontent.fpnq5-1.fna&oh=00_AYC6BV0n1OMju4jeJb6A4iCnDXpqmdda8KV8zjLqWwyPDw&oe=66C8D4ED',
              height: 100.0,
            ),
            SizedBox(height: 20),
            // Displaying the title text
            Text(
              'Dchronicles International Private Limited PVT.LTD',
              textScaleFactor: 2,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Displaying the loading indicator
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 10),
            // Loading text
            Text("Loading"),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dchronicles International Private Limited PVT.LTD")),
      body: Center(
        child: Text(
          "Home page",
          textScaleFactor: 2,
        ),
      ),
    );
  }
}
