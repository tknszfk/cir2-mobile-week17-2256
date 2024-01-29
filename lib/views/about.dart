import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String title;
  const AboutPage({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title:Text(title)
      ),
      body: Text ('About Page'),
    );
  }
}
