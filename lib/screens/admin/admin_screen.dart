// ignore_for_file: prefer_const_constructors, deprecated_member_use
// ignore: unused_import
import 'dart:async';
import 'package:flutter/material.dart';

import '../../player/constans.dart';
import 'admin_page.dart';

// ignore: camel_case_types

// ignore: camel_case_types
class admin_page extends StatefulWidget {
  const admin_page({Key? key}) : super(key: key);

  @override
  State<admin_page> createState() => _admin_pageState();
}

// ignore: camel_case_types
class _admin_pageState extends State<admin_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      // appBar: home_apppar(),

      body: adminpage(),
    );
  }
}
