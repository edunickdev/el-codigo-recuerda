import 'package:animate_do/animate_do.dart';
import 'package:ecr_website/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String route = '/mains';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Navbar(), NavigateWidget(), ContentMain()],
      ),
    );
  }
}

class ContentMain extends StatelessWidget {
  const ContentMain({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.8,
                width: size.width,
                color: Colors.white,
              ),
              Positioned(
                top: 0,
                left: -40,
                child: FadeInLeft(
                  delay: const Duration(milliseconds: 300),
                  duration: const Duration(milliseconds: 1500),
                  child: Container(
                    height: size.height / 8,
                    width: size.width / 11,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -300,
                left: -200,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 2000),
                  child: Container(
                    height: 800,
                    width: 900,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -180,
                top: 210,
                child: FadeInLeft(
                  delay: const Duration(milliseconds: 1200),
                  duration: const Duration(milliseconds: 1000),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -50,
                top: 0,
                child: FadeInRight(
                  duration: const Duration(milliseconds: 2000),
                  delay: const Duration(milliseconds: 1300),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -580,
                left: - size.width * 0.2,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 1200),
                  duration: const Duration(milliseconds: 800),
                  child: Container(
                    height: 700,
                    width: 3200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.1,
                left: size.width * 0.3,
                child: Text(
                  "Las tecnologias mas usadas y con las \n cuales tengo experiencia en desarollo son: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.width * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ).animate().fadeIn(
                      delay: const Duration(milliseconds: 3000),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
