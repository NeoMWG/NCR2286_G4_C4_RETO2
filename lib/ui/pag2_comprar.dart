import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';

class pag2_comprar extends StatefulWidget {
  const pag2_comprar({super.key});

  @override
  State<pag2_comprar> createState() => _pag2_comprarState();
}

class _pag2_comprarState extends State<pag2_comprar> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => ListView.builder(
            itemCount: Control.pro.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(image: NetworkImage(Control.pro[index].imagen)),
                title: Text(Control.pro[index].nombre +
                    " | " +
                    Control.pro[index].precio.toString()),
                trailing: Text(
                  Control.pro[index].cantidad.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          int nuevaCantidad = Control.pro[index].cantidad + 1;
                          Control.cambiarCantidad(index, nuevaCantidad);
                          Control.pro.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_up_rounded)),
                    VerticalDivider(),
                    IconButton(
                        onPressed: () {
                          int nuevaCantidad = Control.pro[index].cantidad - 1;

                          if (nuevaCantidad < 0) {
                            nuevaCantidad = 0;
                          }

                          Control.cambiarCantidad(index, nuevaCantidad);
                          Control.pro.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_down_outlined))
                  ],
                ),
              );
            },
          )),
    );
  }
}
