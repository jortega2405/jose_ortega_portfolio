import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jose_ortega_portfolio/screens/home/home_screen.dart';
import 'package:jose_ortega_portfolio/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        canvasColor: backgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
            bodyLarge: const TextStyle(color: bodyTextColor),
            bodyMedium: const TextStyle(color: bodyTextColor),
          )
      ),
      home: const HomeScreen(),
    );
  }
}
