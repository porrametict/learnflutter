import 'dart:async';

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class FirstPAge extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _FirstPAgeState();
  }
}

class _FirstPAgeState extends State<FirstPAge> {
  String url = 'https://randomuser.me/api/';

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    List data ;

    var extradata = jsonDecode(response.body);
    data = extradata["results"];
    print(data[0]["name"]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Http '),
      ),
      body: RaisedButton(
        child: Text('Make Request'),
        onPressed: makeRequest,
      ),
    );
  }
}
