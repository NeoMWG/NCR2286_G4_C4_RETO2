import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 214, 126, 12)),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://image.similarpng.com/very-thumbnail/2020/11/Red-online-shopping-Illustration-on-transparent-background-PNG.png"),
                  ),
                  accountName: Text("Equipo 4 MT C4"),
                  accountEmail: Text("equipo4@uninorte.edu.co")),
            ),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.start),
                title: Text("Start"),
                trailing: Icon(Icons.arrow_back_ios_new),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.shop),
                title: Text("Shop"),
                trailing: Icon(Icons.arrow_back_ios_new),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.production_quantity_limits_rounded),
                title: Text("Items"),
                trailing: Icon(Icons.arrow_back_ios_new),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.developer_board),
                title: Text("About"),
                trailing: Icon(Icons.arrow_back_ios_new),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(3);
                },
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
