import 'package:flutter/material.dart';

class OthersScreen extends StatelessWidget {
  const OthersScreen({super.key});
  
  static const String route = '/others'; 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const blueMid = Color.fromARGB(255, 37, 86, 129);
    const blueHard = Color.fromARGB(255, 28, 36, 55);
    const blueLight = Color.fromARGB(255, 94, 168, 213);
    const greyMain = Color.fromARGB(255, 120, 136, 151);


    return const Scaffold(
      body: Row(
        children: [
          
        ],
      ),
    );
  }
}
