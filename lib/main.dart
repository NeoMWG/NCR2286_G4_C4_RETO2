import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';
import 'package:reto2/ui/home.dart';

void main() {
  Get.put(controladorGeneral());
  runApp(const MyApp());
}
