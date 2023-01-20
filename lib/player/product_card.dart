import 'package:bcafee/player/product.dart';
import 'package:flutter/material.dart';

import 'constans.dart';

// ignore: camel_case_types
class productcard extends StatelessWidget {
  const productcard({
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
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      height: 200,
      // color: Colors.green,
      child: InkWell(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
                            style: const TextStyle(
                                fontFamily: "myfont", fontSize: 20),
                          )),
                      const Spacer(), // مسافة
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          "${product.level} المستوى",
                          style: const TextStyle(
                              fontSize: 14, fontFamily: "myfont"),
                          // style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      const Spacer(),
                      // Padding(
                      //   padding: const EdgeInsets.all(kDefaultPadding),
                      // child: Container(
                      //   //كونتينر خاص للسعر
                      //   // color: Colors.blue,
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: kDefaultPadding * 1.5,
                      //       vertical: kDefaultPadding / 10),
                      //   //30px,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(30),
                      //       color: kSecondaryColor),
                      //   child: Text(
                      //     "السعر: ${product.price} الف ",
                      //     style: const TextStyle(fontSize: 12),
                      //   ),
                      //   //السعر :30 الف دينار
                      // ),
                      // ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
