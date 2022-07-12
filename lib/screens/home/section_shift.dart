import 'package:ekinerja/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class shiftSection extends StatefulWidget {
  const shiftSection({Key? key}) : super(key: key);

  @override
  State<shiftSection> createState() => _shiftSectionState();
}

class _shiftSectionState extends State<shiftSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.only(top: 12, left: 8, right: 8),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              'Senin, 25 Juli 2020',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '08.00',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: 295,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              Container(
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/map.png', fit: BoxFit.cover,)),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            blurRadius: 0.5,
            offset: Offset(0, 5),
            spreadRadius: 0.1,
            color: Color(0x1F000000)),
      ], color: Colors.white, borderRadius: BorderRadius.circular(11)),
    );
  }
}
