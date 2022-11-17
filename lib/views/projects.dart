import 'package:flutter/material.dart';

import 'widget/myDrawer.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: Color(0xff05172a),
      ),
      drawer: MyDrawer(),
    );
  }
}
