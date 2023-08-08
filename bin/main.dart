import 'dart:convert';
import 'package:dummy_json_posts/models/post_mode.dart';
import 'package:http/http.dart';

void main(List<String> args) async {
  Uri uri = Uri.parse(
      'https://dummyjson.com/posts?limit=10&skip=10&select=title,reactions,userId');
  Response response = await get(uri);

  if (response.statusCode == 200) {
    print("Success");
    PostModel postModel = PostModel.fromJson(jsonDecode(response.body));
    print(postModel);
  } else {
    print("Error ${response.statusCode}");
  }
}
