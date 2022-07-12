import 'package:ekinerja/constants/color_constants.dart';
import 'package:ekinerja/model/model_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sectionTitle extends StatefulWidget {
  const sectionTitle({Key? key}) : super(key: key);

  @override
  State<sectionTitle> createState() => _sectionTitleState();
}

class _sectionTitleState extends State<sectionTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 230,
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  titleModel.title[0]['OPD'].toString(),
                  style: const TextStyle(
                    color: kBlueBlackColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                    width: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(titleModel.title[0]['NIP'].toString(),
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: kGreenColor)),
                        Text(titleModel.title[0]['nama'].toString(),
                            style: GoogleFonts.inter(
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(titleModel.title[0]['jabatan'].toString(),
                            style: GoogleFonts.inter(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: kGreenColor)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/lambang-asahan.webp'),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
