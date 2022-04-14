import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
  ));
}
