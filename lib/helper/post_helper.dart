import 'dart:convert';

import 'package:api_test/model/img.dart';
import 'package:api_test/model/post.dart';
import 'package:http/http.dart' as http;

class PostHelper {
  Future <List<Post>?> getPost()async{
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if(response.statusCode == 200){
      var json = response.body;
      return postFromJson(json);
    }
  }


  // Future <List<Post>?> addPost(title)async{
  //   var response = await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
  //   headers: {"Content-Type":"applicaion/json"},
  //     body: jsonEncode(
  //         {'title': title})
  //   );
  //   print(response.body);
  // }

}




