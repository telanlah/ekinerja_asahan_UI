import 'dart:ui';

import 'package:ekinerja/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:ekinerja/model/model_title.dart';
import 'package:google_fonts/google_fonts.dart';

class settingScreen extends StatefulWidget {
  const settingScreen({Key? key}) : super(key: key);

  @override
  State<settingScreen> createState() => _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {
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
                  SizedBox(
                      height: screenHeight,
                      width: screenWidth,
                      child: Container(
                        child: Center(
                          child: Column(children: [
                            SizedBox(
                              height: 70,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: screenHeight * 0.2,
                              width: screenWidth * 0.4,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/lambang-asahan.webp'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: screenHeight * 0.042,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(3, 3),
                                        spreadRadius: 1),
                                    BoxShadow(
                                        color: Colors.white54,
                                        offset: Offset(-3, -3),
                                        spreadRadius: 1),
                                  ],
                                  borderRadius: BorderRadius.circular(8)),
                              width: screenWidth * 0.9,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(titleModel.title[0]['NIP'].toString(),
                                      style: GoogleFonts.inter(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: kGreenColor)),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(titleModel.title[0]['nama'].toString(),
                                      style: GoogleFonts.inter(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                      titleModel.title[0]['jabatan'].toString(),
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: kGreenColor)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.042,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Ubah Password',
                                  style: TextStyle(color: Colors.white),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Logout',
                                  style: TextStyle(color: Colors.white),
                                )),
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
