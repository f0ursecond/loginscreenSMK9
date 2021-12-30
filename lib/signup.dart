import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/font_style.dart';
import 'package:flutter_application_1/signin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0),
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'REGISTER',
                      style: mainHeader,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: const TextField(
                        style: Phone,
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black87,
                        decoration: InputDecoration(
                          icon:
                              Icon(Icons.badge_rounded, color: Colors.black87),
                          hintText: 'Enter your NIS',
                          hintStyle: subHeader,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: const TextField(
                        style: Phone,
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.black87,
                        decoration: InputDecoration(
                          icon: FaIcon(
                            FontAwesomeIcons.userCircle,
                            color: Colors.black87,
                          ),
                          hintText: 'Enter your Name',
                          hintStyle: subHeader,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: const TextField(
                        style: Phone,
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.black87,
                        decoration: InputDecoration(
                          icon: Icon(Icons.cast_for_education_outlined,
                              color: Colors.black87),
                          hintText: 'Enter your Class',
                          hintStyle: subHeader,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: const TextField(
                        obscureText: true,
                        style: Phone,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.black87,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock_outline, color: Colors.black87),
                          suffixIcon: InkWell(
                            onTap: _TooglePasswordView,
                            child: Icon(
                              Icons.visibility_off,
                              color: Colors.black87,
                            ),
                          ),
                          hintText: 'Enter your password',
                          hintStyle: subHeader,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: const TextField(
                        style: Phone,
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.black87,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.phone,
                            color: Colors.black87,
                          ),
                          hintText: 'Enter your Phone',
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
                          'Register',
                          style: Phone,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Have an account?',
                        style: subHeader,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => loginscreen(),
                                  ));
                            },
                            child: Text(
                              'Back & Login',
                              style: Register,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _TooglePasswordView() {}
