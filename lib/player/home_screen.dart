// ignore_for_file: prefer_const_constructors, deprecated_member_use
// ignore: unused_import
import 'dart:async';
import 'package:flutter/material.dart';

import 'constans.dart';
import 'home_body.dart';
// ignore: camel_case_types

// ignore: camel_case_types
class playerpage extends StatefulWidget {
  const playerpage({Key? key}) : super(key: key);

  @override
  State<playerpage> createState() => _playerpageState();
}

// ignore: camel_case_types
class _playerpageState extends State<playerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      // appBar: home_apppar(),

      body: home_body(),
    );
  }
}
