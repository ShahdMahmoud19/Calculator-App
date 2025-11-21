import 'package:calc_app_task/calc_app.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(title: 'Flutter Demo',
    color: Colors.black,
    debugShowCheckedModeBanner: false,
     home:Calcapp() ,
     )
     ;
    
  }
}
