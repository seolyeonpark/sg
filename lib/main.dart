import 'package:flutter/material.dart';
import './screens/HomePage.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soongil',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(pageTitle: 'Soongil')
    );
  }
}
