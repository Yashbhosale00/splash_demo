import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
          'New Page',
              style: TextStyle(
            fontWeight: FontWeight.bold
                color:Colors.yellow,
        ),
        ),
      ),
    );
  }
}
