import 'package:flutter/material.dart';

import '../components/navbar/navbar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Navbar(),
    );
  }
}