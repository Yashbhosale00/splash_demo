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
          'New Page',
              semanticsLabel: 'new page 2',
              style: TextStyle(
            fontWeight: FontWeight.bold,
                fontSize: 16,
        ),
        ),
      ),
      body:
      const Center(
       child: Text(
        'Bhosale'
      ),
      ),
    );
  }
}
