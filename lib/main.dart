import 'package:flutter/material.dart';
import 'package:gallery_app/screens/albums.screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.deepPurple
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme()
      ),
      home: const AlbumScreen(),
    );
  }
}

