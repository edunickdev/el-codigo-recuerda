import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animate_do/animate_do.dart';

class TextListWidget extends StatelessWidget {
  final List<String> listaPalabras;
  final int valorDuracion;

  const TextListWidget(
      {super.key, required this.listaPalabras, required this.valorDuracion});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextCiclico(
        palabras: listaPalabras,
        intervalo: Duration(seconds: valorDuracion),
      ),
    );
  }
}

class TextCiclico extends StatefulWidget {
  final List<String> palabras;
  final Duration intervalo;

  const TextCiclico(
      {super.key, required this.palabras, required this.intervalo});

  @override
  _TextCiclicoState createState() => _TextCiclicoState();
}

class _TextCiclicoState extends State<TextCiclico> {
  int indice = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(widget.intervalo, (timer) {
      setState(() {
        indice = (indice + 1) % widget.palabras.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BounceInDown(
      delay: const Duration(milliseconds: 500),
      animate: true,
      child: Text.rich(
        TextSpan(
          text: widget.palabras[indice],
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
