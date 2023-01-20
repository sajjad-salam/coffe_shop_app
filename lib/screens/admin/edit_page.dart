import 'package:bcafee/player/product.dart';
import 'package:bcafee/widget/buttons.dart';
import 'package:flutter/cupertino.dart';

import '../../player/constans.dart';

// ignore: camel_case_types
class edit_body extends StatefulWidget {
  const edit_body({super.key, required this.product});
  final player product;

  @override
  // ignore: no_logic_in_create_state
  State<edit_body> createState() => _edit_bodyState(product: product);
}

// ignore: camel_case_types
class _edit_bodyState extends State<edit_body> {
  _edit_bodyState({required this.product});
  final player product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //كونتينر الاسم والمستوى الابيض
        Container(
          width: double.infinity, //حتة ياخ> عرض كل الشاشة
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: 50),
          // height: 100,
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Text(
                  product.name,
                  style: const TextStyle(
                      fontFamily: "myfont",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "${product.level} المستوى",
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: "myfont",
                    color: kSecondaryColor),
              ),
              const SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CupertinoTextField(
                  decoration: BoxDecoration(
                    color: CupertinoColors.extraLightBackgroundGray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  autocorrect: true,
                  textInputAction: TextInputAction.next,
                  placeholder: "تعديل المستوى",
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontFamily: "myfont", fontSize: 14),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CupertinoTextField(
                    decoration: BoxDecoration(
                      color: CupertinoColors.extraLightBackgroundGray,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    placeholder: "التقييم من 1 : 10",
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    textAlign: TextAlign.end,
                    style: const TextStyle(fontFamily: "myfont", fontSize: 14),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CupertinoTextField(
                  decoration: BoxDecoration(
                    color: CupertinoColors.extraLightBackgroundGray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  autocorrect: true,
                  textInputAction: TextInputAction.done,
                  placeholder: "الديون",
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontFamily: "myfont", fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: button_submit(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
