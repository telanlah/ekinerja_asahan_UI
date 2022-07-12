import 'package:ekinerja/constants/color_constants.dart';
import 'package:ekinerja/model/model_kehadiran.dart';
import 'package:flutter/material.dart';

class kehadiranSection extends StatefulWidget {
  const kehadiranSection({Key? key}) : super(key: key);

  @override
  State<kehadiranSection> createState() => _kehadiranSectionState();
}

class _kehadiranSectionState extends State<kehadiranSection> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: ListView.builder(
            itemCount: KehadiranModel.kehadiran.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                  child: kehadiranTab(
                tanggal: KehadiranModel.kehadiran[index]['tanggal'],
                jam_absen: KehadiranModel.kehadiran[index]['jam_absen'],
                potongan: KehadiranModel.kehadiran[index]['potongan'],
              ));
            }),
      ),
    ]);
  }
}

class kehadiranTab extends StatefulWidget {
  final String tanggal;
  final String jam_absen;
  final String potongan;

  const kehadiranTab(
      {Key? key,
      required this.tanggal,
      required this.jam_absen,
      required this.potongan})
      : super(key: key);

  @override
  State<kehadiranTab> createState() => _kehadiranTabState();
}

class _kehadiranTabState extends State<kehadiranTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3, bottom: 3),
      padding: EdgeInsets.only(
        top: 12,
        bottom: 12,
        left: 20,
      ),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(7),
          ),
          child: Center(
            child: Text(
              widget.tanggal,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 1,
          height: 38,
          decoration: BoxDecoration(color: Colors.black26),
        ),
        Center(
          child: Container(
            width: 152,
            margin: EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.jam_absen,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  " WIB",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 16),
          width: 1,
          height: 38,
          decoration: BoxDecoration(color: Colors.black26),
        ),
        Center(
          child: Container(
            child: Row(children: [
              Text(
                widget.potongan,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
          ),
        ),
      ]),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 0.5,
              offset: Offset(0, 5),
              spreadRadius: 0.1,
              color: Color(0x1F000000)),
        ],
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
      ),
    );
  }
}
