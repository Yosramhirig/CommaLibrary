import 'package:flutter/cupertino.dart';

import '../models/category.dart';


class Categories with ChangeNotifier {
  List<Category> categoriesList = [
    Category(
        categoryTitle: 'Classic ',
        categoryLink: 'Classic',
        iconLink: 'images/literature.png'),
    Category(
        categoryTitle: 'Romance',
        categoryLink: 'Romance',
        iconLink: 'images/drama.png'),
    Category(
        categoryTitle: 'Mystery',
        categoryLink: 'Mystery',
        iconLink: 'images/education.png'),
    Category(
        categoryTitle: 'Fantasy',
        categoryLink: 'Fantasy',
        iconLink: 'images/fantasy.png'),
    Category(
        categoryTitle: 'Fiction',
        categoryLink: 'Fiction',
        iconLink: 'images/fiction.png'),
    Category(
        categoryTitle: 'Historical',
        categoryLink: 'History',
        iconLink: 'images/history.png'),

    Category(
        categoryTitle: 'Comic',
        categoryLink: 'Comic',
        iconLink: 'images/humor.png'),
    Category(
        categoryTitle: 'Crime',
        categoryLink: 'Crime',
        iconLink: 'images/thriller.png'),

  ];
}
