import 'package:flutter/material.dart';
import 'package:flutter_beginner_mitch_koko/pages/home.dart';
import 'package:flutter_beginner_mitch_koko/pages/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Mike", "Andrew", "Bob"];

  void sayHi() {
    print('Hi');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}

// Old home:
// Scaffold(
      //   body: ListView.builder(
      //     itemCount: 2,
      //     itemBuilder: (context, index) => GestureDetector(
      //       onTap: () => {
      //         print(index)
      //       },
      //       child: Container(
      //         margin: EdgeInsets.all(2),
      //         height: 200,
      //         color: Colors.blue,
      //       ),
      //     ),
      //   ),
      // ),