import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gallery_app/bloc/images_bloc.dart';
import 'package:gallery_app/data/provider/image_data_provider.dart';
import 'package:gallery_app/data/repository/image_repository.dart';
import 'package:gallery_app/screens/albums.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ImageRepository(ImageDataProvider()),
      child: BlocProvider(
        create: (context) => ImagesBloc(context.read<ImageRepository>()),
        child: MaterialApp(
          title: 'Gallery App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              brightness: Brightness.dark, seedColor: Colors.deepPurple
            ),
            useMaterial3: true,
            textTheme: GoogleFonts.robotoTextTheme()
          ),
          home: const AlbumScreen(),
        ),
      ),
    );
  }
}
