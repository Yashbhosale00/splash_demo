import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text(
          'New Page activity you dont be i[]ed ',
              semanticsLabel: 'new',
              style: TextStyle(
            fontWeight: FontWeight.bold,
                fontSize: 16,
         ),
        ),
      ),
      body:
      const Center(
       child: Text(
        'Bhosale yash pravin at post shivajinagar tal - khandala , dist - satara ',
         style: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.bold,
           color: Colors.yellowAccent
         ),
       ),
      ),
    );
  }
}
