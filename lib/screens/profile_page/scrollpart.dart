import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/buttons.dart';
import '../../widget/dev_show.dart';

class scrollpart extends StatefulWidget {
  @override
  State<scrollpart> createState() => _scrollpartState();
}

class _scrollpartState extends State<scrollpart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          container(),
          logoutbutton(),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Container(
              height: 200,
              alignment: Alignment.bottomRight,
              child: IconButton(
                iconSize: 50,
                icon: Icon(Icons.code_rounded),
                onPressed: () {
                  return showActionSheet(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding logoutbutton() {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Container(
        alignment: Alignment.center,
        child: Material(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 200,
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                'تسجيل الخروج',
                style: TextStyle(
                    fontFamily: "myfont", color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
        // child: button_logout(context),
      ),
    );
  }

  Padding container() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              new BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
              ),
            ]),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(200, 0, 0, 20),
                child: Text(
                  ": مجموع الديون",
                  style: TextStyle(
                    fontFamily: "myfont",
                    fontSize: 20,
                    color: Colors.grey[850],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "10,000",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
