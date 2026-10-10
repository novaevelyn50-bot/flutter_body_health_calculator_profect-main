import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 249, 255),
      body: Stack(
        children: [
          // ชั้น 1 ชื่อแอพ และ รูป
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Body Health Calculator',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 65, 0),
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/images/calculate.png',
                  width: MediaQuery.of(context).size.height * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'คำนวณค่าดัชนีมวลกาย (BMI)',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 255, 65, 0),
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                  ),
                ),
                Text(
                  'คำนวณหาแคลอรี่ที่ร่างการต้องการ (BMR)',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 255, 65, 0),
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                  ),
                ),
              ],
            ),
          ),
          // ชั้น 2 logo sau
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/saulogo.png',
                  width: MediaQuery.of(context).size.height * 0.08,
                  height: MediaQuery.of(context).size.height * 0.08,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '© 2026 SAU. ALL right reserved.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 58, 58, 58),
                    fontSize: MediaQuery.of(context).size.height * 0.015,
                  ),
                ),
                Text(
                  'Create by SAU Software Development Team',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 58, 58, 58),
                    fontSize: MediaQuery.of(context).size.height * 0.015,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
