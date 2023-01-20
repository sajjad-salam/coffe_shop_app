import 'package:bcafee/screens/champ/champ_num.dart';
import 'package:flutter/cupertino.dart';

import 'champ_product.dart';

// ignore: camel_case_types
class champ_screen extends StatefulWidget {
  const champ_screen({super.key});

  @override
  State<champ_screen> createState() => _champ_screenState();
}

// ignore: camel_case_types
class _champ_screenState extends State<champ_screen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
          previousPageTitle: "العودة",
          middle: Text(
            "قائمة البطولات",
            style: TextStyle(fontFamily: "myfont", fontSize: 25),
          )),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "للمشاركة في احدى البطولات سجل اسمك عند الكابتن",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "myfont"),
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
                  itemCount: champps.length,
                  itemBuilder: (context, index) => champview(
                    itemIndex: index,
                    product: champps[index],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
