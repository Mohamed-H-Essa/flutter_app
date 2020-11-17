import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Center(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: [
              Text(
                'muhammed is cool innit?',
                style: TextStyle(
                  fontSize: 20.5,
                  color: Colors.blue[20],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
