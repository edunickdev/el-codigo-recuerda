
import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {

  final List<Widget> children;

  const SectionWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;

    return SizedBox(
      height: size / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (Widget child in children)
            child,
        ],
      ),
    );
  }
}

