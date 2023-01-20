import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  const logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) => Container(
                  child: Image.asset(
                    fit: BoxFit.cover,
                    "asset/image/logo.png",
                  ),
                ),
            childCount: 1));
  }
}
