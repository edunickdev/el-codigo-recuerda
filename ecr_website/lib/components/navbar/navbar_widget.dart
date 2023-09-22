import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/text_list_widget.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final listaIzquierda = ["Desarrollador de software", "Data analyst", "Desarrollo móvil"];
    final listaDerecha = ["Python", "Dart", "SQL", "NoSQL"];

    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.blueGrey[600],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: sizeWidth / 3,
            child: TextListWidget(listaPalabras: listaIzquierda, valorDuracion: 5)),
          SizedBox(
            width: sizeWidth / 3,
            child: InkWell(
              onTap: () {
                context.pop("/home");
              },
              child: Image.asset(
                "assets/images/logo-claro.png",
                height: 80,
                width: 160,
              ),
            ),
          ),
          SizedBox(
            width: sizeWidth / 3,
            child: TextListWidget(listaPalabras: listaDerecha, valorDuracion: 3)),
        ],
      ),
    );
  }
}
