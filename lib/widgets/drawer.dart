import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Ayush"),
              accountEmail: Text("ayush@softegy.in"),
              ),
            ),
            DrawerLinks(icon: Icon(CupertinoIcons.home), heading: "Home"),
            DrawerLinks(icon: Icon(CupertinoIcons.profile_circled), heading: "Profile"),
            DrawerLinks(icon: Icon(CupertinoIcons.mail), heading: "Email Me"),
        ],
      ),
    );
  }
}

class DrawerLinks extends StatelessWidget {
  const DrawerLinks({ required this.icon, required this.heading });

  final Icon icon;
  final String heading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        heading,
        textScaleFactor: 1.2,
      ),
    );
  }
}