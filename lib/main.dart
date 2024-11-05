import 'package:bluecome_clone/HomeButtom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0XFF34287a),
  ));




  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeBottom()
        
      );

    
  }
}