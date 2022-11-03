import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          child: Column(children: [
            Container(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: Text(
                    "Tìm kiếm",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                )),
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                TextFormField(),
                ElevatedButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.search),
                    label: Text("hello")),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
