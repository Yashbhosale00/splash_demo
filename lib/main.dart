import 'dart:async';
import 'package:flutter/material.dart';
import 'firstscrren.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen of our the movie of the colling the main the demo od ours skill you dont know out'
          'path ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SecondScreen()));
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
            Image.network(
              'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg',
              height: 100.0,
            ),
            const SizedBox(height: 20),
            const Text(
              'Dchronicles International Private Limited PVT.LTD',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),
            ),
            const SizedBox(height: 20),
            // Displaying the loading indicator
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            const SizedBox(height: 10),
            // Loading text
            const Text(
                "Loading",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const FirstScreen(),
                      ),
                  );
                },
                child: const Text(
                  'SUBMIT',
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.orangeAccent
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dchronicles International Private Limited PVT.LTD")),
      body: const Center(
        child: Text(
          "Home page",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
