import 'package:api_test/helper/post_helper.dart';
import 'package:flutter/material.dart';

import '../model/post.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoaded = false;

  List<Post>? posts;

  getData()async{
    posts = await PostHelper().getPost();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: Visibility(
        visible: isLoaded,
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: posts?.length??0,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(posts![index].thumbnailUrl.toString()),
                ),
                title: Text(posts![index].title),
              ),
            );
          }
      ),)
    );
  }
}
