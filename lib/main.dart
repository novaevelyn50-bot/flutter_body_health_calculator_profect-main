import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const FlutterBodyHealthCalProject(),
  );
}

class FlutterBodyHealthCalProject extends StatefulWidget {
  const FlutterBodyHealthCalProject({super.key});

  @override
  State<FlutterBodyHealthCalProject> createState() =>
      _FlutterBodyHealthCalProjectState();
}

class _FlutterBodyHealthCalProjectState
    extends State<FlutterBodyHealthCalProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme)),
    );
  }
}