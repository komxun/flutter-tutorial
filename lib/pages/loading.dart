import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    // Convert the string url into Uri
    Uri test_uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    // Retrieve the data
    Response response =  await get(test_uri);
    // Decode json (need to import dart:convert)
    Map data =  jsonDecode(response.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
