import 'package:flutter/material.dart';
import 'package:task_manager/colors.dart';
import 'package:task_manager/pages/page1.dart';
import 'package:task_manager/pages/page2.dart';
import 'package:task_manager/pages/page3.dart';
import 'package:task_manager/pages/page4.dart';
import 'package:task_manager/pages/page5.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List pages = [Page1(), Page2(), Page3(), Page4(), Page5()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      color: pageIndex == 0 ? iconClr : scaffoldClr,
                      size: 30,
                    ),
                    Text(
                      'Home',
                      style: myStyle(12, pageIndex == 0 ? textClr : scaffoldClr,
                          FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.search,
                      color: pageIndex == 1 ? iconClr : scaffoldClr,
                      size: 30,
                    ),
                    Text(
                      'Search',
                      style: myStyle(12, pageIndex == 1 ? textClr : scaffoldClr,
                          FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.emergency_recording_rounded,
                      color: pageIndex == 2 ? iconClr : scaffoldClr,
                      size: 30,
                    ),
                    Text(
                      'Record',
                      style: myStyle(12, pageIndex == 2 ? textClr : scaffoldClr,
                          FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: pageIndex == 3 ? iconClr : scaffoldClr,
                      size: 30,
                    ),
                    Text(
                      'Saved',
                      style: myStyle(12, pageIndex == 3 ? textClr : scaffoldClr,
                          FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.settings,
                      color: pageIndex == 4 ? iconClr : scaffoldClr,
                      size: 30,
                    ),
                    Text(
                      'Settings',
                      style: myStyle(12, pageIndex == 4 ? textClr : scaffoldClr,
                          FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

myStyle(double size, Color clr, FontWeight weight) {
  return TextStyle(fontSize: size, color: clr, fontWeight: weight);
}
