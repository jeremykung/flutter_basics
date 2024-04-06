import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 400,
              width: 200,
              color: Colors.blue[100],
            ),
            Container(
              height: 400,
              width: 200,
              color: Colors.blue[200],
            ),
            Container(
              height: 400,
              width: 200,
              color: Colors.blue[400],
            ),

            // Expanded(
            //   child: Container(
            //     color: Colors.deepPurple[100],
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     color: Colors.deepPurple[200],
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     color: Colors.deepPurple[400],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
