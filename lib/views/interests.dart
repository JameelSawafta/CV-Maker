import 'package:flutter/material.dart';

import 'widget/myDrawer.dart';

class Interests extends StatelessWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interests'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
    );
  }
}
