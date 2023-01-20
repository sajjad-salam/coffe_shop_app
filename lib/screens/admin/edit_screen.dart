import 'package:bcafee/player/product.dart';
import 'package:bcafee/screens/admin/edit_page.dart';
import 'package:flutter/cupertino.dart';

import '../../player/constans.dart';

// ignore: camel_case_types
class editscreen extends StatelessWidget {
  const editscreen({Key? key, required this.product}) : super(key: key);
  final player product;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: kPrimaryColor,
      // appBar: detailsApp(context),
      child: edit_body(product: product),
    );
  }
}
