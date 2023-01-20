import 'package:flutter/cupertino.dart';
import '../widget/buttons.dart';
import '../widget/logo.dart';

// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  var username = "";
  // const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            // middle: Icon(Icons.abc),
            // leading:  ,
            largeTitle: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                textAlign: TextAlign.end,
                'كوفي شوب برافو',
                style: TextStyle(fontFamily: "myfont"),
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
                    onChanged: (value) => setState(() {
                      username = value;
                    }),
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    placeholder: ":اسمك",
                    maxLength: 10,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontFamily: "myfont",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CupertinoTextField(
                    // ignore: avoid_print
                    onSubmitted: (value) => print("submitid $value $username"),
                    obscureText: true,
                    obscuringCharacter: "*",
                    maxLength: 10,
                    textAlign: TextAlign.end,
                    placeholder: ":الرمز",
                    style: const TextStyle(fontFamily: "myfont"),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: newaccoutnt(context),
                  // child: button_sign_up(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
