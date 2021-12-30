import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/font_style.dart';
import 'package:flutter_application_1/signin.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'font_style.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return loginscreen();
  }
}
