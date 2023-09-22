import 'package:ecr_website/components/components.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String route = '/mains';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Navbar(),
          NavigateWidget(),
          ContentMain()
        ],
      ),
    );
  }
}

class ContentMain extends StatelessWidget {
  const ContentMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
