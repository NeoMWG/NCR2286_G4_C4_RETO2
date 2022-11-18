import 'package:flutter/material.dart';

class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
            image: NetworkImage(
                "https://media.istockphoto.com/id/804269590/es/vector/concepto-de-compras-en-l%C3%ADnea.jpg?s=612x612&w=0&k=20&c=swjr4eVBTsBoBuZ2ByeeHcYzWtCVqTnGK3pXUuPfz4A=")),
      ),
    );
  }
}
