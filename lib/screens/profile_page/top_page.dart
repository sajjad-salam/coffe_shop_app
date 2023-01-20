import 'package:flutter/material.dart';

// اعلى الصفحة للحساب التي تحتوي الاسم والصورة والمستوى
// ignore: use_key_in_widget_constructors
class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFFDC670D),
            Color(0xFFFFD500),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 170, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // اضافة صورة الى صفحة الحساب
                SizedBox(
                  height: 100,
                  child: Image.asset("asset/image/three.png"),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 100),
                      child: Text(
                        "سجاد سلام",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "myfont",
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "المستوى : 100",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "myfont",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
