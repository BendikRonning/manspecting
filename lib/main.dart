import 'package:flutter/material.dart';
import 'screens/startscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cattle App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'start_screen',
        routes: {
          StartScreen.id: (context) => StartScreen(),
        });
  }
}
