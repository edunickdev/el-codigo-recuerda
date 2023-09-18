import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.blueGrey[600],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              width: sizeWidth / 5,
              child: Image.asset(
                "assets/images/logo-claro.png",
                height: 80,
                width: 160,
              )),
          SizedBox(
            width: sizeWidth / 5,
            child: const Text.rich(
              TextSpan(
                text: "ECR",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Text.rich(
            TextSpan(
              text: "El Código",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
          ),
          Text.rich(
            TextSpan(
              text: "Recuerda",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[400]),
            ),
          ),
        ],
      ),
    );
  }
}
