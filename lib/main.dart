import 'package:flutter/material.dart';
import 'package:nft_project/home_screen.dart';
import 'package:nft_project/login_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(

       // primarySwatch: Colors.blue,
      ),
      home:LoginScreen(),
    );
  }
}


