import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String title;
  const ProfilePage({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text(title),
      ),
    body: Text('Profile Page'),
    );
  }
}
