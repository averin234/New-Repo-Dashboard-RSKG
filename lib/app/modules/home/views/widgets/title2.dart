import 'package:flutter/material.dart';

import 'mydropdown.dart';

class WidgetTitlePoli1 extends StatelessWidget {
  WidgetTitlePoli1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        children: [
          WidgetTitle3(),
          // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
    );
  }
}
