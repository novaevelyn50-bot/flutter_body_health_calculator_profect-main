import 'package:flutter/material.dart';

class BmrUi extends StatefulWidget {
  const BmrUi({super.key});

  @override
  State<BmrUi> createState() => _BmrUiState();
}

class _BmrUiState extends State<BmrUi> {
  bool isMale = true;
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String bmrValue = '0.00';

  @override
  void dispose() {
    _weightController.dispose();
    _heightController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _showValidationSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 249, 255),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: SizedBox(
              width: 360,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'คำนวณหาค่าอัตราการเผาผลาญ basal (BMR)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  SizedBox(height: 25),
                  Image.asset(
                    'assets/images/bmr.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 18),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'เพศ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => setState(() => isMale = true),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                isMale ? const Color(0xFFBFE6F8) : Colors.white,
                            foregroundColor: const Color(0xFF1E1E1E),
                            fixedSize: const Size.fromHeight(42),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: isMale
                                    ? const Color(0xFF9CC9E6)
                                    : const Color(0xFFD0D0D0),
                                width: 1,
                              ),
                            ),
                          ),
                          child: Text(
                            'ชาย',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1E1E1E),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => setState(() => isMale = false),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: !isMale
                                ? const Color(0xFFF8C8DC)
                                : Colors.white,
                            foregroundColor: const Color(0xFF1E1E1E),
                            fixedSize: const Size.fromHeight(42),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: !isMale
                                    ? const Color(0xFFE7A6C1)
                                    : const Color(0xFFD0D0D0),
                                width: 1,
                              ),
                            ),
                          ),
                          child: Text(
                            'หญิง',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1E1E1E),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'น้ำหนัก (kg.)',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'กรอกน้ำหนักของคุณ',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFD0D0D0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFD0D0D0)),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ส่วนสูง (cm.)',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'กรอกส่วนสูงของคุณ',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFD0D0D0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFD0D0D0)),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'อายุ (ปี)',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'กรอกอายุของคุณ',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFD0D0D0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFD0D0D0)),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        final weightText = _weightController.text.trim();
                        final heightText = _heightController.text.trim();
                        final ageText = _ageController.text.trim();

                        if (weightText.isEmpty ||
                            heightText.isEmpty ||
                            ageText.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text(
                                'กรุณากรอกน้ำหนัก ส่วนสูง และอายุให้ครบ',
                              ),
                              backgroundColor: Colors.red,
                              duration: const Duration(seconds: 2),
                            ),
                          );
                          return;
                        }

                        try {
                          final weight = double.parse(weightText);
                          final height = double.parse(heightText);
                          final age = double.parse(ageText);

                          if (!weight.isFinite ||
                              !height.isFinite ||
                              !age.isFinite) {
                            _showValidationSnackBar(
                              'กรุณากรอกตัวเลขเท่านั้น',
                            );
                            return;
                          }

                          if (weight <= 0 || height <= 0 || age <= 0) {
                            _showValidationSnackBar(
                              'น้ำหนัก ส่วนสูง และอายุต้องมากกว่า 0',
                            );
                            return;
                          }

                          setState(() {
                            if (isMale) {
                              final bmr = 88.362 +
                                  (13.397 * weight) +
                                  (4.799 * height) -
                                  (5.677 * age);
                              bmrValue = bmr.toStringAsFixed(2);
                            } else {
                              final bmr = 447.593 +
                                  (9.247 * weight) +
                                  (3.098 * height) -
                                  (4.330 * age);
                              bmrValue = bmr.toStringAsFixed(2);
                            }
                          });
                        } on FormatException {
                          _showValidationSnackBar('กรุณากรอกตัวเลขเท่านั้น');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF26E3D),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'คำนวณ BMR',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        _weightController.clear();
                        _heightController.clear();
                        _ageController.clear();

                        setState(() {
                          bmrValue = '0.00';
                        });

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('ล้างข้อมูลเรียบร้อยแล้ว'),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB9B9B9),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'ล้างข้อมูล',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB7D4B0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'BMR',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                        Text(
                          bmrValue,
                          style: const TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 0, 0),
                          ),
                        ),
                        Text(
                          'kcal/day',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
