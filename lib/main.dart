import 'package:bcafee/screens/login_page.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const first_page());

// ignore: camel_case_types
class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: login_page(),
    );
  }
}
