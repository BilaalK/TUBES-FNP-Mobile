import 'package:flutter/material.dart';
import 'package:fnp_tubes/constants.dart';
// import 'package:fnp_tubes/pages/edit_kandidat.dart';
// import 'package:fnp_tubes/pages/input_kandidat.dart';
import 'package:fnp_tubes/pages/login.dart';
// import 'package:fnp_tubes/pages/status_kandidat.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        // ignore: deprecated_member_use
        backgroundColor: abuabu(),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: Colors.blue.shade700,
      ),
      home: const Login(),
    );
  }
}
