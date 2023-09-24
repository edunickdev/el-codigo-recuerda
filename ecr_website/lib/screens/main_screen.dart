import 'package:animate_do/animate_do.dart';
import 'package:ecr_website/components/components.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
    const blueMid = Color.fromARGB(255, 37, 86, 129);
    const blueHard = Color.fromARGB(255, 28, 36, 55);
    const blueLight = Color.fromARGB(255, 94, 168, 213);
    const greyMain = Color.fromARGB(255, 120, 136, 151);

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
                left: -size.width * 0.03,
                child: FadeInLeft(
                  delay: const Duration(milliseconds: 300),
                  duration: const Duration(milliseconds: 1500),
                  child: Container(
                    height: size.height / 8,
                    width: size.width / 11,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: greyMain,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -size.height * 0.3,
                left: -size.width * 0.11,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 2000),
                  child: Container(
                    height: size.height * 0.8,
                    width: size.width * 0.5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueLight,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -size.width * 0.15,
                top: size.height * 0.24,
                child: FadeInLeft(
                  delay: const Duration(milliseconds: 1200),
                  duration: const Duration(milliseconds: 1000),
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width * 0.3,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueMid,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -size.width * 0.12,
                top: 0,
                child: FadeInRight(
                  duration: const Duration(milliseconds: 2000),
                  delay: const Duration(milliseconds: 1300),
                  child: Container(
                    height: size.height * 0.3,
                    width: size.width * 0.3,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueMid,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -size.height * 0.63,
                left: -size.width * 0.4,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 1200),
                  duration: const Duration(milliseconds: 800),
                  child: Container(
                    height: size.height * 0.73,
                    width: size.width * 1.6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueHard,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.15,
                left: size.width * 0.33,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Mis tecnologías preferidas y \nmi experiencia con ellas.",
                      textAlign: TextAlign.center,
                      textStyle: TextStyle(
                        fontSize: size.width * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: size.height * 0.30,
                left: size.width * 0.15,
                child: FadeInRight(
                  duration: const Duration(milliseconds: 2000),
                  child: Text(
                    "Python, en proyectos que involucran Scrapping, \ncreación de interfazes gráficas, almacenamiento y consumo de bases de datos, \nanálisis y generación de informes. si deseas conocer más, haz click",
                    style: TextStyle(
                      fontSize: size.width * 0.011,
                      fontWeight: FontWeight.bold,
                      color: blueHard,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.45,
                right: size.width * 0.12,
                child: FadeInLeft(
                  duration: const Duration(milliseconds: 2000),
                  child: Text(
                    "Dart, en la creación de demos, \nintegrando transcripcion de voz a texto, algunas otras aplicaciones sencillas como TODO's, \ncon conexiones a Firebase, ChatGPT entre otros. si deseas conocer más, haz click",
                    style: TextStyle(
                      fontSize: size.width * 0.011,
                      fontWeight: FontWeight.bold,
                      color: blueHard,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
