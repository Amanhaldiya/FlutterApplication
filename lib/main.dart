import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Login_page.dart';
import 'package:flutter_application_1/Pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    int days=30;
    return MaterialApp(
  
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      darkTheme: ThemeData(brightness: Brightness.light),
     routes: {
        "/":(context)=>Loginpage(),
        "/LoginPage":(context)=>Loginpage(),
        "/home":(context)=>HomePAge(),
      },
    ); 
  
  }
}