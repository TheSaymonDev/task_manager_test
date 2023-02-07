import 'package:flutter/material.dart';
import 'package:task_manager/colors.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldClr,
      body: Center(child: Image.asset('images/settings.png')),
    );
  }
}
