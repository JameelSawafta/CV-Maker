import 'package:flutter/material.dart';

import 'widget/myDrawer.dart';

class KeySkills extends StatelessWidget {
  const KeySkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Skills'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
    );
  }
}
