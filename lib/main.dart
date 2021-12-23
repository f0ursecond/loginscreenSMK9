import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/font_style.dart';
import 'package:flutter_application_1/login.dart';
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

    return Scaffold(
        body: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SMK NEGERI 9 SEMARANG',
                    style: mainHeader,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 200,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black87,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person, color: Colors.black87),
                        hintText: 'Enter your NIS',
                        hintStyle: subHeader,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: const TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: Colors.black87,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock, color: Colors.black87),
                        suffixIcon: InkWell(
                          onTap: _TooglePasswordView,
                          child:
                              Icon(Icons.visibility_off, color: Colors.black87),
                        ),
                        hintText: 'Enter your password',
                        hintStyle: subHeader,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                      margin: EdgeInsets.only(top: 25.0),
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        style: mainHeader,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

void _TooglePasswordView() {}
