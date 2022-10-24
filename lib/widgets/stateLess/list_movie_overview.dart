import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class ListMovieOverView extends StatefulWidget {
  const ListMovieOverView({super.key});

  @override
  State<ListMovieOverView> createState() => _ListMovieOverViewState();
}

class _ListMovieOverViewState extends State<ListMovieOverView> {
  Future getAllMovie() async {
    var response = await http
        .get(Uri.https('63569a819243cf412f890457.mockapi.io', 'moive'));
    var dataJson = jsonDecode(response.body);
    print(dataJson.length);
    return dataJson;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Text('Loading'),
            );
          } else {
            return Container(
              child: Text("Data Here"),
            );
          }
        },
        future: getAllMovie(),
      ),
    );
  }
}
