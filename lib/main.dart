
import 'package:books/provider/app_notifier.dart';
import 'package:books/provider/categories.dart';
import 'package:books/screens/Categories/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fonts/constants.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BooksProvider()),
        ChangeNotifierProvider(create: (_) => Categories()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: textTheme),
        home: const MainScreen(),
      ),
    );
  }
}
