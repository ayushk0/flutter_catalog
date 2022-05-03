// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_catalog/utilities/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const[
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
  const DrawerLinks({
    Key? key,
    required this.icon,
    required this.heading,
  }) : super(key: key);

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
      onTap: (){
        switch (heading) {
          case "Home":
            Navigator.pushNamed(context, MyRoutes.homeRoute);
            break;
          case "Profile":
            Navigator.pushNamed(context, MyRoutes.loginRoute);
            break;
          case "Email Me":
            Navigator.pushNamed(context, MyRoutes.homeRoute);
            break;
          default:
            Navigator.pushNamed(context, MyRoutes.homeRoute);
            break;
        }
      }
    );
  }
}

// (heading=="Profile")? Navigator.pushNamed(context, MyRoutes.loginRoute)
//       : Navigator.pushNamed(context, MyRoutes.homeRoute);