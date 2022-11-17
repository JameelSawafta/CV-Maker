import 'package:flutter/material.dart';

import 'widget/myDrawer.dart';

class References extends StatelessWidget {
  const References({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('References'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
    );
  }
}
