import 'package:bcafee/screens/champ/champ_page.dart';
import 'package:bcafee/screens/profile_page/myhomepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/signup.dart';
import '../screens/snap_page/snap_page.dart';
import 'constans.dart';
import 'product.dart';
import 'product_card.dart';

enum Sky { midnight, viridian, dolap, snapp }

Map<Sky, Color> skyColors = <Sky, Color>{
  Sky.midnight: const Color.fromARGB(255, 68, 68, 201),
  Sky.viridian: const Color(0xff40826d),
  Sky.dolap: const Color.fromARGB(255, 26, 144, 187),
  Sky.snapp: const Color.fromARGB(255, 196, 168, 43),
};

// ignore: unused_import, camel_case_types
class home_body extends StatefulWidget {
  const home_body({super.key});

  @override
  State<home_body> createState() => _home_bodyState();
}

// ignore: camel_case_types
class _home_bodyState extends State<home_body> {
  // ignore: prefer_final_fields
  Sky _selectedSegment = Sky.snapp;

  // const home_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: navigator(),
      backgroundColor: skyColors[_selectedSegment],
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "قائمة المتصدرين",
                style: TextStyle(
                    fontFamily: "myfont",
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding / 2, //20/2
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: kBackgroundColor, //0xFFF1EFF1
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                ),
                ListView.builder(
                  itemCount: players.length,
                  itemBuilder: (context, index) => productcard(
                    itemIndex: index,
                    product: players[index],
                  ),
                  /*
                    هاي تخليلك الوجت تتكرر ف تكدر
                    تسوي هواي منهة بدون كوبي بيست
                    */
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  CupertinoNavigationBar navigator() {
    snap() {
      Navigator.push(context,
          CupertinoPageRoute<Widget>(builder: (BuildContext context) {
        return const snapp_page();
      }));
    }

    champ() {
      Navigator.push(context,
          CupertinoPageRoute<Widget>(builder: (BuildContext context) {
        return const champ_page();
      }));
    }

    profile() {
      Navigator.push(context,
          CupertinoPageRoute<Widget>(builder: (BuildContext context) {
        return prof();
      }));
    }

    return CupertinoNavigationBar(
      middle: CupertinoSlidingSegmentedControl<Sky>(
        backgroundColor: CupertinoColors.systemGrey2,
        thumbColor: skyColors[_selectedSegment]!,
        groupValue: _selectedSegment,
        onValueChanged: (Sky? value) {
          if (value == Sky.dolap) {
            return snap();
          }
          if (value == Sky.viridian) {
            return champ();
          }
          if (value == Sky.midnight) {
            return profile();
          }
        },
        children: const <Sky, Widget>{
          Sky.midnight: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'الحساب',
              style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 18,
                  fontFamily: "myfont"),
            ),
          ),
          Sky.viridian: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'بطولات',
              style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 18,
                  fontFamily: "myfont"),
            ),
          ),
          Sky.dolap: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'الدولاب',
              style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 18,
                  fontFamily: "myfont"),
            ),
          ),
          Sky.snapp: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              ' الرئيسية',
              style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 18,
                  fontFamily: "myfont"),
            ),
          ),
        },
      ),
    );
  }
}

// ignore: camel_case_types
