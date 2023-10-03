import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/signup/signuppage.dart';

void main() {
  runApp(const spotifyclone());
}

class spotifyclone extends StatelessWidget {
  const spotifyclone({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}
