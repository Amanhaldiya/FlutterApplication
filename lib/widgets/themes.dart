  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme{
    static ThemeData get LightTheme => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
          cardColor: Colors.black,
        canvasColor: lightbluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black), 
          centerTitle:true,
          titleTextStyle:TextStyle(fontSize: 25, color: Colors.blue ,)
           ,
        )
              ); 
  static ThemeData get DarkTheme => ThemeData(
      // brightness: Brightness.light);
   fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: lightbluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black), 
          centerTitle:true,
          titleTextStyle:TextStyle(fontSize: 25, color: Colors.blue ,)
           ,
        )
              ); 
  


  static Color creamColor=Color(0xfff5f5f5);
   static Color creamColor1=Color.fromARGB(234, 245, 245, 245);
  static Color darkcreamColor=Vx.gray800;
  static Color lightbluishColor=Vx.blue800;
  static Color darkBluishcolor=const Color.fromARGB(255, 29, 32, 231);
  
  }
