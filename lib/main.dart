import 'package:flutter/material.dart';
import 'package:gallery_app/screens/gallery_category.screen.dart';

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
      ),
      home: const GalleryCategoryScreen(),
    );
  }
}

