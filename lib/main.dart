import 'package:flutter/material.dart';
import './Welcomepage.dart';
// import 'package:effortive_2025/Welcomepage.dart';

void main(){
  runApp(MaterialApp(

      initialRoute: '/',
      routes: {
      '/': (context) => WelcomePage(),
      },
  ));
}