import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigateWidget extends StatelessWidget {
  const NavigateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> secciones = [ "Techs principales", "Otras techs", "Proyectos", "Sobre mí", "Contacto" ];
    const List<String> rutas = [ "/mains", "/others", "/projects", "/me", "/contact" ];
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 11,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < secciones.length; i++)
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 50,
                  width: 180,
                  child: BounceInUp(
                    child: OutlinedButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(BorderSide.none)),
                      onPressed: () {
                        context.push(rutas[i]);
                      },
                      child: Text(
                        secciones[i],
                        style: const TextStyle(fontSize: 18, color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
