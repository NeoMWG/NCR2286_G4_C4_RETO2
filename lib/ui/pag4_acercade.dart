import 'package:flutter/material.dart';

class pag4_cercade extends StatefulWidget {
  const pag4_cercade({super.key});

  @override
  State<pag4_cercade> createState() => _pag4_cercadeState();
}

class _pag4_cercadeState extends State<pag4_cercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Equipo 4"),
            subtitle: Text("Nombres"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text("Ciclo 4 Mision TIC"),
            subtitle: Text("Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text("3016665xxx"),
            subtitle: Text("Celular"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("equipo4MTC4@uninorte.edu.co"),
            subtitle: Text("Email"),
          )
        ],
      ),
    );
  }
}
