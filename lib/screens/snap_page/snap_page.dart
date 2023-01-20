import 'dart:async';
import 'dart:math';

import 'package:bcafee/player/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'board_view.dart';
import 'model.dart';

// ignore: camel_case_types
class snapp_page extends StatefulWidget {
  const snapp_page({super.key});

  @override
  State<StatefulWidget> createState() {
    return snap_page();
  }
}

// ignore: camel_case_types
class snap_page extends State<snapp_page> with SingleTickerProviderStateMixin {
  bool _buttonDisabled = false;
  double _angle = 0;
  double _current = 0;
  late AnimationController _ctrl;
  late Animation _ani;
  late Timer _timer;
  int _start = 86400; // seconds in 24 hours

  final List<Luck> _items = [
    Luck("bilird", Colors.accents[0], "تدور العجلة كل 24 ساعة تلقائيا"),
    Luck("em", Colors.accents[2], ""),
    Luck("em2", Colors.accents[12], ""),
    Luck("em6", Colors.accents[6], ""),
    Luck("em4", Colors.accents[8], ""),
    Luck("em5", Colors.accents[10], ""),
  ];

  @override
  void initState() {
    super.initState();
    // ignore: no_leading_underscores_for_local_identifiers
    var _duration = const Duration(milliseconds: 5000);
    _ctrl = AnimationController(vsync: this, duration: _duration);
    _ani = CurvedAnimation(parent: _ctrl, curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        previousPageTitle: "العودة",
        middle: Text("صفحة الدولاب",
            style: TextStyle(fontFamily: "myfont", fontSize: 25)),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: AnimatedBuilder(
            animation: _ani,
            builder: (context, child) {
              final _value = _ani.value;
              final _angle = _value * this._angle;
              return Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  BoardView(items: _items, current: _current, angle: _angle),
                  _buildGo(),
                  _buildResult(_value),
                  // Spacer(),
                  // Text(_start.toString()),
                ],
              );
            }),
      ),
    );
  }

  _buildGo() {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            customBorder: const CircleBorder(),
            // onTap: ,
            onTap: _startTimer,
            child: Container(
              alignment: Alignment.center,
              height: 80,
              width: 80,
              child: const Text(
                "تدوير",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "myfont"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _animation() {
    if (_buttonDisabled == false) {
      if (!_ctrl.isAnimating) {
        var _random = Random().nextDouble();
        _angle = 20 + Random().nextInt(5) + _random;
        _ctrl.forward(from: 0.0).then((_) {
          _current = (_current + _random);
          _current = _current - _current ~/ 1;
          _ctrl.reset();
        });
      }
      Future.delayed(const Duration(hours: 24), () {
        _buttonDisabled = true;
      });
    }
  }

  _startTimer() {
    if (_buttonDisabled == false) {
      if (!_ctrl.isAnimating) {
        var _random = Random().nextDouble();
        _angle = 20 + Random().nextInt(5) + _random;
        _ctrl.forward(from: 0.0).then((_) {
          _current = (_current + _random);
          _current = _current - _current ~/ 1;
          _ctrl.reset();
        });
      }
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_start > 0) {
          _buttonDisabled = true;
          _start--;
        } else {
          timer.cancel();
          _buttonDisabled = false;
        }
      });
    });
    setState(() {
      _buttonDisabled = true;
    });
  }

  int _calIndex(value) {
    var _base = (2 * pi / _items.length / 2) / (2 * pi);
    return (((_base + value) % 1) * _items.length).floor();
  }

  _buildResult(_value) {
    var _index = _calIndex(_value * _angle + _current);
    String task = _items[_index].task;
    String _asset = _items[_index].asset;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 15.0,
            ),
            Image.asset(_asset, height: 80.0, width: 80.0),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "تدور العجلة كل 24 ساعة \nوتحصل على كيم هدية",
              style: TextStyle(fontSize: 18, fontFamily: "myfont"),
            ),
          ],
        ),
      ),
    );
  }
}
