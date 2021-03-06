import 'package:flutter/material.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:flutter_application_1/main.dart';

import 'font_style.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
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
                      height: 20.0,
                    ),
                    const Image(
                      image: AssetImage('assets/images/logo.png'),
                      height: 200,
                    ),
                    const SizedBox(
                      height: 20.0,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                            child: Icon(Icons.visibility_off,
                                color: Colors.black87),
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
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: Text('Dont have an account?'),
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
                                      builder: (context) => signup()));
                            },
                            child: Text(
                              'Register',
                              style: Register,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void _TooglePasswordView() {}
