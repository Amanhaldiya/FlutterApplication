import "package:flutter/material.dart";

class HomePAge extends StatelessWidget {
  const HomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    int days=30;
    String name="programming";
    return  Scaffold(
        appBar: AppBar(
          title: Text("App"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days flutter "+name),
          ),
        ),
      drawer: Drawer(),
    );
    
     
    
    
  }
}