// import 'package:http/http.dart';
// import 'dart:convert';
// import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

class MyUser {

  final String uid;

  // String email = '';
  // String password = '';
  // String name = ''; // the name of the user
  // int color = 0; // how brown their coffee will be
  // int sugar = 0; // location  url for api endpoint

  MyUser({required this.uid});

  // User({ required this.email, required this.password, required this.name, required this.color, required this.sugar });

  // Future<void> getTime() async {
  //
  //   try {
  //     // make the request
  //     Response response = await get(Uri.http('worldtimeapi.org', '/api/timezone/$url'));
  //     Map data = jsonDecode(response.body);
  //     //print(data);
  //
  //     // get properties from data
  //     String datetime = data['datetime'];
  //     String offset = data['utc_offset'].substring(1,3);
  //     // print(datetime);
  //     // print(offset);
  //
  //     // create DateTime object
  //     DateTime now = DateTime.parse(datetime);
  //     now = now.add(Duration(hours: int.parse(offset)));
  //
  //
  //     // set the time property
  //     time = DateFormat.jm().format(now);
  //   }
  //   catch (e) {
  //     print('caught error: $e');
  //     time = 'could not get time data';
  //   }
  // }

}