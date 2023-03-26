import 'package:http/http.dart' as http;

class BookApi {


  Future searchBooks({required String searchBook}) async {
    final response = await http.get(
      Uri.parse(
          "https://www.googleapis.com/books/v1/volumes?q=$searchBook&maxResults=39"),
      // headers: headers,
    );

    var body = response.body;
    //print(body);
    return body;
  }

  Future showBooksDetails({required String id}) async {
    final response = await http.get(
      Uri.parse("https://www.googleapis.com/books/v1/volumes/$id"),
    );

    var body = response.body;
    //print(body);
    return body;
  }


}
