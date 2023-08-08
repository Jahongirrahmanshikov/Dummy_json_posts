import 'package:http/http.dart';

void main(List<String> args) async {
  Uri uri = Uri.parse('https://dummyjson.com/posts/4');
  Response response = await delete(uri);
  if (response.statusCode == 200) {
    print(" Delete Successfull");
  } else {
    print("Error ${response.statusCode}");
  }
}
