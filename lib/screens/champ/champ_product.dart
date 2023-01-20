import 'package:bcafee/screens/champ/champ_num.dart';
import 'package:flutter/material.dart';

import '../../player/constans.dart';

// ignore: camel_case_types
class champview extends StatelessWidget {
  const champview({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);
  final int itemIndex;
  final champp product;

  /*
هاي كانت خطوات تعريف متغيرات تبني عليهن العناصر 
  */

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      height: 200,
      // color: Colors.green,
      child: InkWell(
        child: Stack(
          alignment: Alignment.bottomCenter,
          // فائدة الستاك انو اكدر اخلي اكثر من عنصر
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 118, 236, 230),
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
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 200,
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
                                fontFamily: "myfont", fontSize: 22),
                          )),
                      const Spacer(), // مسافة
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          "${product.discription} ",
                          style: const TextStyle(
                              fontSize: 14, fontFamily: "myfont"),
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
