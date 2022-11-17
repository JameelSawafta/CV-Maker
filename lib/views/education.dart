import 'package:flutter/material.dart';

import 'widget/myDrawer.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
    );
  }
}
