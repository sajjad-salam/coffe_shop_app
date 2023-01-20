// ignore_for_file: camel_case_types

import 'package:bcafee/screens/admin/account_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../player/product.dart';

// ignore: unused_import
class adminpage extends StatefulWidget {
  const adminpage({super.key});

  @override
  State<adminpage> createState() => _adminpageState();
}

class _adminpageState extends State<adminpage> {
  // const adminpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "اهلاً بك كابتن رسول",
                style: TextStyle(
                    fontFamily: "myfont",
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20 / 2, //20/2
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: const Color(0xFFF1EFF1), //0xFFF1EFF1
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                ),
                ListView.builder(
                  itemCount: players.length,
                  itemBuilder: (context, index) => account_card(
                    itemIndex: index,
                    product: players[index],
                  ),
                  /*
                    هاي تخليلك الوجت تتكرر ف تكدر
                    تسوي هواي منهة بدون كوبي بيست
                    */
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
