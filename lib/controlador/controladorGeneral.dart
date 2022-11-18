import 'package:get/get.dart';
import 'package:reto2/clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;
  @override
  void onInit() {
    pro.add(productos(
        1,
        "Sombrero Beige",
        "https://www.carlosnieto.com.co/wp-content/uploads/SOMBRERO-CAMEL-1-1024x1024.jpg",
        0,
        120000));
    pro.add(productos(2, "Sombrero Negro",
        "https://cdn.koaj.co/c/422-category_default/sombreros.jpg", 0, 210000));
    pro.add(productos(
        3,
        "Sombrero Cafe",
        "http://d3ugyf2ht6aenh.cloudfront.net/stores/224/896/products/s61-0b3ef689afe6d9c11615990858592564-640-0.jpg",
        0,
        185000));
    pro.add(productos(
        4,
        "Sombrero Gris",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR03r8RmXHRvIpvKsHPA3Ndv2HhFGH1WaZz_c17yojVYvla14rdQx5ruVwGv-YgZod1GS0&usqp=CAU",
        0,
        360000));
    pro.add(productos(
        5,
        "Sombrero Azul",
        "https://ae01.alicdn.com/kf/HTB1Df1iKVXXXXXcXXXXq6xXFXXX0/220202871/HTB1Df1iKVXXXXXcXXXXq6xXFXXX0.jpg?size=101650&height=1000&width=1000&hash=95f1fe0f9589e4542176efbfe224b799",
        0,
        173000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print(
        "posicion = " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiartodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
