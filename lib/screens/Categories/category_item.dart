
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../models/category.dart';
import '../books_list.dart';


class CategoryItem extends StatefulWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {

  double elevation = 18.0;

  void navigateToSpecificSearchScreen() {
    setState(() {
      elevation = 4.0;
    });




    Future.delayed(Duration(milliseconds: 100)).then((_) {
      setState(() {
        elevation = 18.0;
      });
      // Navigator.of(context)
      //     .pushNamed(SpecificSearchScreen.routeName, arguments: {
      //   'category': widget.category.categoryLink,
      //   'categoryTitle': widget.category.categoryTitle,
      // });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(
          left: 16, bottom: MediaQuery.of(context).size.height * 0.09 * 1.3),
      child: GestureDetector(
        onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  BookList(name: widget.category.categoryLink!!)));
    }

        ,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          elevation: elevation,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    widget.category.iconLink!!,
                    scale: 1.0,
                  ),
                ),
                SizedBox(height: 10),
                FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    widget.category.categoryTitle!!,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      // letterSpacing: 2,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
