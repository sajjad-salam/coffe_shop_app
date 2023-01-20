//الازرار وهيكلتهن

// import 'package:bcafee/screens/login_page.dart';
import 'package:bcafee/player/home_screen.dart';
import 'package:bcafee/screens/admin/admin_screen.dart';
import 'package:bcafee/screens/login_page.dart';
import 'package:bcafee/screens/snap_page/snap_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/signup.dart';

//زر الارسال للادمن
// ignore: non_constant_identifier_names
CupertinoButton button_submit(BuildContext context) {
  return CupertinoButton.filled(
    borderRadius: BorderRadius.circular(30),
    onPressed: () {},
    child: const Text('ارسال', style: TextStyle(fontFamily: "myfont")),
  );
}

//زر تسجيل دخول
// ignore: non_constant_identifier_names
CupertinoButton button_sign(BuildContext context) {
  return CupertinoButton.filled(
    onPressed: () {
      Navigator.push(context,
          CupertinoPageRoute<Widget>(builder: (BuildContext context) {
        return const playerpage();
      }));
    },
    borderRadius: BorderRadius.circular(15),
    disabledColor: Colors.amber,
    child: const Text('تسجيل الدخول', style: TextStyle(fontFamily: "myfont")),
  );
}

//زر حساب جديد الانكويل
GestureDetector newaccoutnt(BuildContext context) {
  return GestureDetector(
    child: Text(
      "حساب جديد",
      style: TextStyle(fontFamily: "myfont", color: Colors.blue[700]),
    ),
    onTap: () {
      Navigator.push(context,
          CupertinoPageRoute<Widget>(builder: (BuildContext context) {
        return admin_page(); //signup_page
      }));
    },
  );
}

//زر الدولاب
// ignore: non_constant_identifier_names
CupertinoButton button_snap(BuildContext context) {
  return CupertinoButton.filled(
    onPressed: () {
      Navigator.push(context,
          CupertinoPageRoute<Widget>(builder: (BuildContext context) {
        return const snapp_page();
      }));
    },
    child: const Text('صفحة الدولاب', style: TextStyle(fontFamily: "myfont")),
  );
}

//زر تسجيل خروج
// ignore: non_constant_identifier_names
CupertinoButton button_logout(BuildContext context) {
  return CupertinoButton.filled(
    onPressed: () {
      Navigator.push(context,
          CupertinoPageRoute<Widget>(builder: (BuildContext context) {
        return const login_page();
      }));
    },
    child: const Text('تسجيل الخروج',
        style: TextStyle(fontFamily: "myfont", fontSize: 16)),
  );
}

//======================================== ماعليك بهاذ الزر

// ignore: camel_case_types
class button extends StatelessWidget {
  const button({super.key, required this.onpressed, required this.title});
  final String title;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: CupertinoButton.filled(
          onPressed: () {},
          borderRadius: BorderRadius.circular(20),
          child: const Text("title",
              style: TextStyle(fontFamily: "myfont", fontSize: 14)),
        ),
      ),
    );
  }
}
