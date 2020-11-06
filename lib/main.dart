import 'package:conversor/src/app.dart';
import 'package:conversor/src/modules/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
  ));
}
