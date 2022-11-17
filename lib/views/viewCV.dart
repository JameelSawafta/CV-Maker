import 'package:flutter/material.dart';

import 'widget/myDrawer.dart';

class ViewCV extends StatelessWidget {
  const ViewCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View CV'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
    );
  }
}
