import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_http_demo_1/album.dart';
import 'package:flutter_http_demo_1/posts.dart';
import 'package:http/http.dart' as http;
// 라이브러리 (같은 이름의 객체가 존재 가능하다.)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http 연습',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

late Future<Album> futureAlbum;
late Future<Posts> futurePosts;

@override
  void initState() {

    futurePosts = fetchPosts();



    // fetchAlbum().then((data) => {
    //   print("id : ${data.id}"),
    //   print("userId : ${data.userId}"),
    //   print("title : ${data.title}"),
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('http lib ex'),
      ),
      body: Center(
        child: FutureBuilder<Posts>(
          future: futurePosts,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return Text(snapshot.data!.body);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<int> futureNumber() async {
  return Future.delayed(const Duration(seconds: 3), 
  () {
    return 100;
  },);

}

Future<Posts> fetchPosts () async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/2");
  final response = await http.get(uri);

  if(response.statusCode == 200) {
    return Posts.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Fail to load album');
  }

}