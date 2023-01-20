import 'package:flutter/cupertino.dart';
import '../widget/buttons.dart';
import '../widget/logo.dart';

// ignore: camel_case_types
class signup_page extends StatefulWidget {
  const signup_page({super.key});

  @override
  State<signup_page> createState() => _signup_pageState();
}

// ignore: camel_case_types
class _signup_pageState extends State<signup_page> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                textAlign: TextAlign.end,
                'كوفي شوب برافو',
                style: TextStyle(fontFamily: "myfont", fontSize: 25),
              ),
            ),
          ),
          const logo(),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CupertinoTextField(
                    decoration: BoxDecoration(
                      color: CupertinoColors.extraLightBackgroundGray,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    placeholder: ":اسمك",
                    maxLength: 10,
                    textAlign: TextAlign.end,
                    style: const TextStyle(fontFamily: "myfont", fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CupertinoTextField(
                    // onSubmitted: (value) => print("submitid $value $username"),
                    obscureText: true,
                    obscuringCharacter: "*",
                    textInputAction: TextInputAction.next,
                    maxLength: 10,
                    textAlign: TextAlign.end,
                    placeholder: ":الرمز الجديد",
                    style: const TextStyle(fontFamily: "myfont", fontSize: 14),
                    decoration: BoxDecoration(
                      color: CupertinoColors.extraLightBackgroundGray,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CupertinoTextField(
                    // onSubmitted: (value) => print("submitid $value $username"),
                    obscureText: true,
                    obscuringCharacter: "*",
                    maxLength: 10,
                    textInputAction: TextInputAction.done,
                    textAlign: TextAlign.end,
                    placeholder: ": اعد كتابة الرمز",
                    style: const TextStyle(fontFamily: "myfont", fontSize: 14),
                    decoration: BoxDecoration(
                      color: CupertinoColors.extraLightBackgroundGray,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: button_sign(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
