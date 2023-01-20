// ignore_for_file: prefer_const_constructors, deprecated_member_use
// ignore: unused_import
import 'dart:async';
import 'package:bcafee/screens/champ/champ.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types

// ignore: camel_case_types
class champ_page extends StatefulWidget {
  const champ_page({Key? key}) : super(key: key);

  @override
  State<champ_page> createState() => _champ_pageState();
}

// ignore: camel_case_types
class _champ_pageState extends State<champ_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: home_apppar(),

      body: champ_screen(),
    );
  }
}
