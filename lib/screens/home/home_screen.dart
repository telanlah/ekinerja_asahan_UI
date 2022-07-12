import 'package:ekinerja/constants/color_constants.dart';
import 'package:ekinerja/model/model_title.dart';
import 'package:ekinerja/screens/home/section_kehadiran.dart';
import 'package:ekinerja/screens/home/section_shift.dart';
import 'package:ekinerja/screens/home/section_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            sectionTitle(),

            // Section Laman tengah
            Container(
              margin: EdgeInsets.only(top: 21),
              padding: EdgeInsets.all(25),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Section Shift
                  shiftSection(),

                  SizedBox(
                    height: 17,
                  ),

                  // label attendance
                  Container(
                    child: Text(
                      'Kehadiran',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),

                  // Section Kehadiran
                  kehadiranSection(),
                ],
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            kGreenColor,
            Color(0xFF35e467),
            Color(0xFF35e48a),
            Color(0xFF35e4aa),
            Color(0xFF35e4fe),
            Color(0xFF22b2fe),
            kGreenColor,
          ], begin: Alignment.topLeft, end: Alignment.centerRight),
        ),
      ),
    );
  }
}
