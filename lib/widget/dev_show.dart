// من هنا الاشعار المنبثق
import 'package:flutter/cupertino.dart';

showActionSheet(BuildContext context) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      title: const Text(
        'تطوير : المهندس سجاد سلام 07748820206',
        style: TextStyle(fontFamily: "myfont", fontSize: 18),
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'موافق',
            style: TextStyle(fontFamily: "myfont", fontSize: 18),
          ),
        ),
      ],
    ),
  );
}
