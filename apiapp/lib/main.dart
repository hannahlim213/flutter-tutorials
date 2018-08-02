import 'dart:async';
import 'dart:convert'; // convert json to a list

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(
    home : new HomePage(),
    ));
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  Future<String> getData() async {
    var response = await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
      headers: {
        "Accept": "application/json"
      }
      // Uri.encodeFull("https://api.giphy.com/v1/gifs/random?"),
      // headers: {
      // "api_Key": "KudX9M9dp6HhlptHRXfCXeY0lRB8fA7y",
      // "q": "dog",
      // "Accept": "application/json",
      // }
    );

    // print(response.body);

    // dart:convert in action
    List data = JSON.decode(response.body);
    print(data[0]["title"]);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data please"),
          onPressed: getData,
        ), 
      ),
    ); 
  }
}

