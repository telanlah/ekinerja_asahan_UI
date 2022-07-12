import 'package:ekinerja/constants/color_constants.dart';
import 'package:ekinerja/screens/home/home_screen.dart';
import 'package:ekinerja/screens/home/setting_screen.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: TabBarView(children: [
            // Home Screen
            homeScreen(),
            settingScreen(),
          ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: kGreenColor, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.white,
                        style: BorderStyle.solid),
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        scale: 6,
                        image: AssetImage('assets/images/fprint.png'))),
              ),
            )),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black45, blurRadius: 2, spreadRadius: 0),
            ],
            color: Colors.white,
          ),
          child: TabBar(
            labelColor: kGreenColor,
            indicatorColor: Colors.transparent,
            labelPadding: EdgeInsets.all(0.5),
            indicatorWeight: 1,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelColor: Colors.black45,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Beranda',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
