import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries_app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Groceries App',
      home: HomePage(),
    );
  }
}

