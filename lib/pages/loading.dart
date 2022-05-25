import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async
  {
    
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    final response = await http.get(Uri.https('https://jsonplaceholder.typicode.com/todos/1'));
    Map data = jsonDecode(response.body);
    
  }

  @override
  void initState() {

    super.initState();
    print('initState Function Ran');
    getData();

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
          'Loading Screen'
      ),
    );
  }
}
