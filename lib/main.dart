import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/index.dart';
import 'package:flutter_catalog/pages/login.dart';
import 'package:flutter_catalog/utilities/routes.dart';
import 'package:flutter_catalog/utilities/theme.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      initialRoute: MyRoutes.homeRoute,
      routes:{
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}