import 'package:flutter/material.dart';
import 'package:task_manager/colors.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      body: Center(child: Image.asset('images/record.png')),
    );
  }
}
