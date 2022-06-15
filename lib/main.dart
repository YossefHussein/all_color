import 'package:flutter/material.dart';
import 'pages/colors_page.dart';
import 'style/styles.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(centerTitle: true),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: aColor,
          primary: kColor,
        ),
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          // bodyText1: GoogleFonts.oswald(textStyle: textTheme.bodyText1),
          // bodyText2: GoogleFonts.oswald(textStyle: textTheme.bodyText2),
          // bodySmall: GoogleFonts.oswald(textStyle: textTheme.bodySmall),
          // bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
          // bodyLarge: GoogleFonts.oswald(textStyle: textTheme.bodyLarge),
        ),
      ),
      home: ColorsPage(),
    );
  }
}
