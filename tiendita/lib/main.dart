import 'package:flutter/material.dart';
import 'package:tiendita/pages/LoginPage.dart';
import 'package:tiendita/pages/SigninPage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda App',
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple[500],  
      ),
      routes: {
        // 'registro': (BuildContext context) => SignInPage(), 
      },
    );
  }
}