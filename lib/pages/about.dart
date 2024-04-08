import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text("Home"),
            onPressed: () => {Navigator.pushNamed(context, '/home')}),
      ),
    );
  }
}