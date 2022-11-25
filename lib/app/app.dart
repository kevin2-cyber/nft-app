import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_exam/app/ui/welcome.dart';

class ExamApp extends StatelessWidget {
  const ExamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFFEFEFE);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exam',
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.dmSansTextTheme(),
        scaffoldBackgroundColor: color,
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.dmSansTextTheme(),
        scaffoldBackgroundColor: color,
      ),
      home: const Welcome(),
    );
  }
}
