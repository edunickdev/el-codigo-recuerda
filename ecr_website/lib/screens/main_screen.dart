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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Navbar(), NavigateWidget(), ContentMain()],
        ),
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
      height: size.width < 620 ? size.height * 1.35 : size.height * 0.73,
      width: size.width,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height:
                    size.width < 620 ? size.height * 1.35 : size.height * 0.73,
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
                    height: size.width < 620
                        ? size.height * 0.8
                        : size.height * 0.6,
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
              MainTextContent(key: key,)
            ],
          ),
        ],
      ),
    );
  }
}

class MainTextContent extends StatelessWidget {
  const MainTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const blueHard = Color.fromARGB(255, 28, 36, 55);
    const greyMain = Color.fromARGB(255, 120, 136, 151);

    return SizedBox(
      width: size.width * 0.8,
      height: size.height * 0.72,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Positioned(
              width: size.width / 2,
              top: 60,
              left: size.width * 0.33,
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Mi experiencia con mis tecnologías preferidas.",
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                      fontSize: size.width < 620 ? 25 : 30,
                      fontWeight: FontWeight.bold,
                      color: greyMain,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
              ),
            ),
            Positioned(
              width: size.width * 0.2,
              top: size.height * 0.30,
              left: size.width * 0.18,
              child: FadeInRight(
                duration: const Duration(milliseconds: 2000),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Python, en proyectos que involucran Scrapping, creación de interfazes gráficas, almacenamiento y consumo de bases de datos, análisis y generación de informes. si deseas conocer más, haz click",
                    style: TextStyle(
                      fontSize: size.width <= 620
                          ? 18
                          : size.width > 620 || size.width <= 860
                              ? 25
                              : 30,
                      fontWeight: FontWeight.bold,
                      color: blueHard,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
            ),
            Positioned(
              width: size.width / 1.5,
              top: size.width < 620 ? size.height * 0.7 : size.height * 0.45,
              right: size.width * 0.12,
              child: FadeInLeft(
                duration: const Duration(milliseconds: 2000),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Dart, en la creación de demos, integrando transcripcion de voz a texto, algunas otras aplicaciones sencillas como TODO's, con conexiones a Firebase, ChatGPT entre otros. si deseas conocer más, haz click",
                    style: TextStyle(
                      fontSize: size.width < 620
                          ? 18
                          : size.width > 620 || size.width <= 860
                              ? 25
                              : 30,
                      fontWeight: FontWeight.bold,
                      color: blueHard,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
