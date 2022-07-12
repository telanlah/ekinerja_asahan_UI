import 'dart:ui';

import 'package:ekinerja/constants/color_constants.dart';
import 'package:ekinerja/screens/home/home_screen.dart';
import 'package:ekinerja/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

import '../../components/gettextformfield.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final username = TextEditingController();
  final password = TextEditingController();

  void prosesLogin() {
    if (username.text == "admin" || password.text == "admin") {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => mainScreen(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: const Text("Peringatan !!!"),
            content: const Text("Username / Password Salah... "),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              TextButton(
                child: const Text("Tutup"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kGreenColor,
      body: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: ListView(
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: -50,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow[700],
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.2,
                    right: -100,
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[400],
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.5,
                    bottom: -100,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow[700],
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 130, sigmaY: 130),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                      child: Container(
                    child: Center(
                      child: Column(children: [
                        SizedBox(
                          height: screenHeight * 0.1,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: screenHeight * 0.4,
                          width: screenWidth * 0.6,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/lambang-asahan.webp'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                        ),
                        GetTextFormField(
                          controller: username,
                          icon: Icons.person,
                          hintName: 'NIP',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        GetTextFormField(
                          controller: password,
                          icon: Icons.lock,
                          hintName: 'Password',
                          isObscureText: true,
                        ),
                        Container(
                          margin: EdgeInsets.all(screenWidth * 0.06),
                          width: double.infinity,
                          child: ElevatedButton(
                            child: const Text(
                              'Masuk',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              prosesLogin();
                            },
                          ),
                        ),
                      ]),
                    ),
                  )),
                ],
              ),
            ],
          )),
    );
  }
}
