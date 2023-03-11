import 'package:flutter/material.dart';
import 'package:flutter_app_1/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {'login': (context) => Login()},
  ));
}
