import 'dart:convert';
import 'package:dummy_json_posts/models/post_mode.dart';
import 'package:http/http.dart';

void main(List<String> args) async {
  Uri uri = Uri.parse('https://dummyjson.com/posts/search?q=love');
  Response response = await get(uri);

  if (response.statusCode == 200) {
    print("Success");
    Post postModel = Post.fromJson(jsonDecode(response.body));
    print(postModel);
  } else {
    print("Error ${response.statusCode}");
  }
}
