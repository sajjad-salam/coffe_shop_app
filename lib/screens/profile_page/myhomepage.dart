// ignore_for_file: camel_case_types

import 'package:bcafee/screens/profile_page/top_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'scrollpart.dart';

// ignore: , use_key_in_widget_constructors
class prof extends StatefulWidget {
  @override
  State<prof> createState() => _profState();
}

// ignore:
class _profState extends State<prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: profile_page(),
    );
  }
}

// ignore: , use_key_in_widget_constructors
class profile_page extends StatefulWidget {
  // const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}

//صفحة الحساب كاملة
class _profile_pageState extends State<profile_page> {
  // const _profile_pageState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
          previousPageTitle: "العودة",
          middle: Text(
            "الحساب",
            style: TextStyle(fontFamily: "myfont", fontSize: 28),
          )),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopPage(),
              scrollpart(),
            ],
          ),
        ]),
      ),
    );
  }
}
