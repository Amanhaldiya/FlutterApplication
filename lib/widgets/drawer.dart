import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});
  final String imageUrl="";
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child:Container(
     color: Colors.blue,
     child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(accountName:Text("Hey User"),
           accountEmail: Text("User@gmail.com"),
           margin: EdgeInsets.zero,
           currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),),
           ),),
        ListTile(
          leading: Icon(CupertinoIcons.home,
          color: Colors.pink,
          ),
          title:Text("Home",
          textScaleFactor: 1.5,
          style:TextStyle(
            color: Colors.pink,
          )
          )
          ,
        ),
          ListTile(
          leading: Icon(CupertinoIcons.profile_circled,
          color: Colors.pink,
          ),
          title:Text("Profile",
          textScaleFactor: 1.5,
          style:TextStyle(
            color: Colors.pink,
          )
          )
          ,
        ),
          ListTile(
          leading: Icon(CupertinoIcons.home,
          color: Colors.pink,
          ),
          title:Text("Email me",
          textScaleFactor: 1.5,
          style:TextStyle(
            color: Colors.pink,
          )
          )
          ,
        )
      ],
     ),
    ));
  }
}