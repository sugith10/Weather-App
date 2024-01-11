import 'package:flutter/material.dart';
import 'package:weather/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(                   
          backgroundColor: Colors.transparent,
          elevation: 0
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

