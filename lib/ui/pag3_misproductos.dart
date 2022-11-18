import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class pag3_misproductos extends StatefulWidget {
  const pag3_misproductos({super.key});

  @override
  State<pag3_misproductos> createState() => _pag3_misproductosState();
}

class _pag3_misproductosState extends State<pag3_misproductos> {
  controladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: Control.pro.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Control.pro[index].cantidad == 0
                        ? Text("")
                        : ListTile(
                            leading: Image(
                                image: NetworkImage(Control.pro[index].imagen)),
                            title: Text(Control.pro[index].nombre),
                            subtitle: Text("Precio: " +
                                Control.pro[index].precio.toString() +
                                " | Cantidad : " +
                                Control.pro[index].cantidad.toString()),
                            trailing: Text((Control.pro[index].cantidad *
                                    Control.pro[index].precio)
                                .toString()),
                          );
                  },
                ),
              ),
              Divider(),
              Text(
                "Total a pagar : " + Control.calcularTotal().toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    Alert(
                        type: AlertType.success,
                        context: context,
                        title: "ATENCION!!!",
                        desc: "Compra Realizada Satisfactoriamente",
                        buttons: [
                          DialogButton(
                              child: Text("CERRAR"),
                              onPressed: () {
                                Control.limpiartodo();
                                Navigator.pop(context);
                                Control.cambiarposicion(0);
                              })
                        ]).show();
                  },
                  icon: Icon(Icons.save),
                  label: Text("Comprar"))
            ],
          ),
        ));
  }
}
