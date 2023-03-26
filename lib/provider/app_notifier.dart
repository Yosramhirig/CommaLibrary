import 'dart:convert';


import 'package:flutter/cupertino.dart';

import '../api/api.dart';
import '../models/Books.dart';
import '../models/DetailModel.dart';

class BooksProvider extends ChangeNotifier {
  final BookApi bookApi = BookApi();

// Books Genre
  Future<Books> searchBookData({required String searchBook}) async {
    var res = await bookApi.searchBooks(searchBook: searchBook);
    //print(res);
    var data = jsonDecode(res);

    return Books.fromJson(data);
  }

//Showing Particular Book Details
  Future<DetailModel> showBookData({required String id}) async {
    var res = await bookApi.showBooksDetails(id: id);
    //print(res);
    var data = jsonDecode(res);

    return DetailModel.fromJson(data);
  }
}
