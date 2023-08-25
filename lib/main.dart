import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Login_page.dart';
import 'package:flutter_application_1/Pages/cart_page.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:velocity_x/velocity_x.dart';
void main() {
  runApp(//MaterialApp(
   // home: MyApp(),
   VxState(store:MyStore(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, });
   
  @override
  Widget build(BuildContext context) { 
    int days=30;

    return MaterialApp(
      debugShowCheckedModeBanner: false,   
      //themeMode: ThemeMode.light,
      themeMode: ThemeMode.system,
    //  theme: MyTheme.LightTheme,
     
     // darkTheme: MyTheme.DarkTheme,
  //  darkTheme: ThemeData(brightness: Brightness.light),
   //  initialRoute: MyRoutes.HomeRoute,
     routes: {
        "/":(context)=>Loginpage(),
        MyRoutes.LoginRoute:(context)=>Loginpage(),
        MyRoutes.HomeRoute:(context)=>HomePAge(),
        MyRoutes.CartRoute:(context)=>CartPage(),
      },
    
  
    ); 
     
  }
}

