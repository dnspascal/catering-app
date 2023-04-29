import 'package:flutter/material.dart';
import 'package:catering_app/pages/home_page.dart';

class Catering  extends StatelessWidget {
  const Catering ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Catering',
      home:HomePage(),
      
    );
  }


}