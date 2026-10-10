// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/about_ui.dart';
import 'package:flutter_body_health_calculator_project/views/bmi_ui.dart';
import 'package:flutter_body_health_calculator_project/views/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //สร้างตัวแปรเก็บ index baritem ที่เลือก
  int selectIndex = 1;

  // สร้าง list เก็บหน้าที่ต้องการแสดง 3 หน้า About,BMR,BMI
  //list เหมือน array
  List subview = [
    BmiUi(),
    AboutUI(),
    BmrUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 65, 0),
        title: const Text(
          "Body Health Calculator",
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          //****code ใดที่มีผลการแสดงผล เขียนอยู่ใต้ setState
          setState(() {
            selectIndex = value;
          });
        },
        currentIndex: selectIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 65, 0),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "BMI"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "About"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heartCircleCheck), label: "BMR"),
        ],
      ),
      //ส่วน body -----------------------------------------
      body: subview[selectIndex],
    );
  }
}
