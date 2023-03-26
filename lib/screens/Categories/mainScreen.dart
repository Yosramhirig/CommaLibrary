import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_title.dart';
import 'categories_section.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Column(
        children: <Widget>[
          AppTitle(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  // Showcase(),
                  Container(child: CategoriesSection()),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}

