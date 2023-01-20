import 'package:flutter/cupertino.dart';

//صفحة النافكيتور اللي فوك
//حاليا مامشتغلة
class navigator_home extends StatelessWidget {
  const navigator_home({
    Key? key,
    required this.brightness,
  }) : super(key: key);

  final Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      backgroundColor: CupertinoColors.systemYellow,
      border: Border(
        bottom: BorderSide(
          color: brightness == Brightness.light
              ? CupertinoColors.black
              : CupertinoColors.white,
        ),
      ),
      middle:
          const Text('كوفي شوب برافو', style: TextStyle(fontFamily: "myfont")),
      largeTitle: const Text('الصفحة الرئيسية',
          style: TextStyle(fontFamily: "myfont", fontSize: 25)),
    );
  }
}
