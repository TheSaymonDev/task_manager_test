import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_manager/colors.dart';
import 'package:task_manager/model/data.dart';
import 'package:task_manager/home_page.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 10,
                  child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                   gradient: LinearGradient(colors: [topBg,color2]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
              )),
              Expanded(
                flex: 12,
                  child: Container(
                height: double.infinity,
                width: double.infinity,
              )),
            ],
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 12,right: 12,left: 12),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Habib 👋',
                              style: myStyle(18, whiteClr, FontWeight.w600),
                            ),
                            Text(
                              'Let’s explore your notes',
                              style: myStyle(12, Colors.white70, FontWeight.w400),
                            )
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: topBg),
                              image: DecorationImage(
                                  image: AssetImage('images/saymon.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: whiteClr.withOpacity(0.2)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to TickTick Task',
                            style: myStyle(14, whiteClr, FontWeight.w600),
                          ),
                          Text(
                            'Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.',
                            style: myStyle(12, Colors.white70, FontWeight.w400),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 30,
                                width: 110,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.5, color: whiteClr),
                                    borderRadius: BorderRadius.circular(30),
                                    color: topBg
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.play_arrow, size: 18, color: whiteClr,),
                                      Text('Watch Video', style: myStyle(12, whiteClr, FontWeight.w500),)
                                    ],
                                  ),
                                ),
                              ),
                              Transform.rotate(
                                angle: pi/-8,
                                child: Container(
                                  height: 55,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('images/icon1.png'), fit: BoxFit.cover)
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: double.infinity,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.all(8),
                            height: double.infinity,
                            width: MediaQuery.of(context).size.width*.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: whiteClr
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 30,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage(mylist1[index]['iconUrl']), fit: BoxFit.cover)
                                  ),
                                ),
                                Text(mylist1[index]['taskName'],style: myStyle(12, textClr, FontWeight.w500),),
                                Text(mylist1[index]['date'],style: myStyle(10, Colors.black54, FontWeight.w400),)
                              ],
                            ),
                          ),
                          separatorBuilder: ((context, index) => SizedBox(width: 10,)),
                          itemCount: mylist1.length),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('All Tasks', style: myStyle(14, textClr, FontWeight.w600),),
                        Text('See All', style: myStyle(12, Colors.black54, FontWeight.w400),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Expanded(child: Container(
                      child: ListView.separated(
                          itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.all(8),
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: whiteClr
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 30,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('images/icon2.png'), fit: BoxFit.cover)
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Online Class Routine',style: myStyle(12, textClr, FontWeight.w500),),
                                    SizedBox(height: 4,),
                                    Text('Save Date:  10/12/2022',style: myStyle(10, Colors.black54, FontWeight.w400),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(height: 10,),
                          itemCount: 10),
                    ))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
