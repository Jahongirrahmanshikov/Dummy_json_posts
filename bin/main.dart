import 'package:http/http.dart';

void main(List<String> args) async {
  Uri uri = Uri.parse('https://dummyjson.com/posts/add');

  Response response = await post(uri, body: {
    "title": "Hello World",
    "body": "This is a dummy post",
    "userId": "1",
    "tags": "dart, flutter",
    "reactions": "100"
  });

  if (response.statusCode == 200) {
    print("Success");
  } else {
    print("Error ${response.statusCode}");
  }
}
