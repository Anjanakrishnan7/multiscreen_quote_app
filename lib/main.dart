import 'package:flutter/material.dart';
import 'package:multiscreen_quote_app/details.dart';
import 'package:multiscreen_quote_app/home.dart';

void main() {
  runApp(MaterialApp(home: Home(),routes:{"details":(context)=>Details()},debugShowCheckedModeBanner: false,));
}

