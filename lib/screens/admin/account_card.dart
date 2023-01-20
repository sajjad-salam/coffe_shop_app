import 'package:bcafee/player/product.dart';
import 'package:bcafee/screens/admin/edit_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class account_card extends StatelessWidget {
  const account_card({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);
  final int itemIndex;
  final player product;

  /*
هاي كانت خطوات تعريف متغيرات تبني عليهن العناصر 
  */

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 2),
      height: 200,
      // color: Colors.green,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              CupertinoPageRoute<Widget>(builder: (BuildContext context) {
            return editscreen(
              product: players[itemIndex],
            );
          }));
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          // فائدة الستاك انو اكدر اخلي اكثر من عنصر
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                  boxShadow: const [
                    //شادو او ضل للبوكس الازرق
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12,
                    )
                  ]),
            ),
            Positioned(
              top: 0,
              left: 0,
              //خطوات اضافة الصورة داخل الكارد
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                // color: Colors.amber,
                // اضافة الصورة داخل الكارد تمت
                child: Image.asset(
                  product.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 136,
                  //لان الصورة عرضهة 200 ف اني نقصت عرض الشاشة من ال 200
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // نقل العناصر الى اقصى اليمين
                    children: [
                      const Spacer(), //مسافة
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            product.name,
                            style: const TextStyle(fontFamily: "myfont"),
                          )),
                      const Spacer(), // مسافة
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "${product.level} المستوى",
                          style: const TextStyle(
                              fontSize: 10, fontFamily: "myfont"),
                          // style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
